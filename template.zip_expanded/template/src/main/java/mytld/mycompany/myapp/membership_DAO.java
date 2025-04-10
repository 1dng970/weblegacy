package mytld.mycompany.myapp;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("membership_DAO")
public class membership_DAO implements membership_mapper{
	
	@Resource(name="sqltemp")
	public SqlSessionTemplate st;
	

}
