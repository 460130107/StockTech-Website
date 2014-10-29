/*
 * 系统名称：斯多克个人网站自助系统
 * 
 * 类名：NewsTypeHibernateDAO
 * 
 * 创建日期：2014-09-24
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
 * 文章类型信息DAO
 * @author tt
 * @version 14.9.16
 */
public class NewsTypeHibernateDAO extends HibernateDaoSupport {

	private static final Logger log = LoggerFactory.getLogger(NewsTypeHibernateDAO.class);
	
	/**
	 * 添加频道
	 * @param newsType
	 * @return 操作是否成功
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
	 * 批量删除
	 * @param newsTypeIds
	 * @return 是否成功
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
     * 可通过Id来查找频道的信息
     * @param typeId
     * @return
     */
    public NewsType findNewsTypeById(int typeId){
    	
    	return (NewsType)getHibernateTemplate().get(NewsType.class, typeId); 
    	
    }
    
    /**
	 * 修改频道信息
	 * @param NewsType
	 * @return 频道
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
	 * 查询所有频道
	 * @return 频道集合
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
      * 分页查询文章类别
      * @author zxy
      * @param page
      * @return文章类型集合
      */

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<NewsType> getNewsTypeBypaging(final Page page) {
		return (List<NewsType>) this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)throws HibernateException, SQLException {
				
				Query query = session.createQuery("from newstype news");
				// 设置每页显示多少个，设置多大结果。
				query.setMaxResults(page.getEveryPage());
				// 设置起点
				query.setFirstResult(page.getBeginIndex());
				List<NewsType> NewsTypelist = query.list();
				return NewsTypelist;
			}
		});
	}
     
	
	/**
     * 查询文章类别数
     * @author zxy
     * @return文章类型集合
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
      * 可通过名称来查找频道的信息
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
