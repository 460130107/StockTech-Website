/*
 * ϵͳ���ƣ�˹��˸�����վ����ϵͳ
 * 
 * ������NewsTypeHibernateDAO
 * 
 * �������ڣ�2014-09-24
 */
package org.mystock.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.mystock.model.NewsInfo;
import org.mystock.model.NewsType;
import org.mystock.utils.Page;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * ����������ϢDAO
 * @author tt
 * @version 14.9.16
 */
public class NewsTypeHibernateDAO extends HibernateDaoSupport {

	private static final Logger log = LoggerFactory.getLogger(NewsTypeHibernateDAO.class);
	
	/**
	 * ���Ƶ��
	 * @param newsType
	 * @return �����Ƿ�ɹ�
	 */
	@SuppressWarnings("finally")
	public boolean addNewsType(NewsType newsType){
		boolean result = false;
		try {
			getHibernateTemplate().save(newsType);
			log.debug("save successful");
			result = true;
		} catch (RuntimeException e) {
			log.error("save failed", e);
			throw e;
		}finally{
			return result;
		}
	}
	
	/**
	 * ����ɾ��
	 * @param newsTypeIds
	 * @return �Ƿ�ɹ�
	 */
	public boolean deleteNewsType(ArrayList<Integer> newsTypeIds) {
		boolean result = true;
		for (int i = 0; i < newsTypeIds.size(); i++) {
			try {
				getHibernateTemplate().delete(findNewsTypeById(newsTypeIds.get(i).intValue()));
				log.debug("delete successful");
			} catch (RuntimeException re) {
				log.error("delete failed", re);
				result = false;
				throw re;
			}
		}
		return result;
	}
	
	/**
     * ��ͨ��Id������Ƶ������Ϣ
     * @param typeId
     * @return
     */
    public NewsType findNewsTypeById(int typeId){
    	
    	return (NewsType)getHibernateTemplate().get(NewsType.class, typeId); 
    	
    }
    
    /**
	 * �޸�Ƶ����Ϣ
	 * @param NewsType
	 * @return Ƶ��
	 */
	@SuppressWarnings("finally")
	public NewsType updateNewsType(NewsType newsType) {
		try{
			getHibernateTemplate().update(newsType);
			log.debug("update successful");
		}catch (RuntimeException e) {
			log.error("update failed", e);
			newsType =  null;
			throw e;
		}finally{
			return newsType;
		}
	}
	
	/**
	 * ��ѯ����Ƶ��
	 * @return Ƶ������
	 */
     @SuppressWarnings("unchecked")
	public List<NewsType> getAllNewsType(){
    	 try {
   			String queryString = "from newstype order by newsTypeId";
   			return (List<NewsType>)getHibernateTemplate().find(queryString);
   		} catch (RuntimeException re) {
   			log.error("find all failed", re);
   			throw re;
   		}
     }
     
     
     /**
      * ��ҳ��ѯ�������
      * @author zxy
      * @param page
      * @return�������ͼ���
      */

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<NewsType> getNewsTypeBypaging(final Page page) {
		return (List<NewsType>) this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)throws HibernateException, SQLException {
				
				Query query = session.createQuery("from newstype news");
				// ����ÿҳ��ʾ���ٸ������ö������
				query.setMaxResults(page.getEveryPage());
				// �������
				query.setFirstResult(page.getBeginIndex());
				List<NewsType> NewsTypelist = query.list();
				return NewsTypelist;
			}
		});
	}
     
	
	/**
     * ��ѯ���������
     * @author zxy
     * @return�������ͼ���
     */
	public long getNewsTypeNum(){	
		try{
			String query = "select count(*) from newstype";
			Long l = (Long)getHibernateTemplate().find(query).get(0);
			return l.longValue();
		}catch(RuntimeException re){
			log.error("find all failed", re);
   			throw re;
		}
		
	}
     
     
     /**
      * ��ͨ������������Ƶ������Ϣ
      * @param typename
      * @return
      */
     @SuppressWarnings("unchecked")
	public NewsType findNewsTypeByName(String typename){
    	 try {
   			String queryString = "from newstype where newsTypeName = ?";
   			List<NewsType> result = getHibernateTemplate().find(queryString, typename);
   			if (result.size()>0){
   				return result.get(0);
   			}else{
   				return null;
   			}
   		} catch (RuntimeException re) {
   			log.error("find all failed", re);
   			return null;
   		}
     }
}
