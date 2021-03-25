package cn.edkso.candiandian.dao;

        import cn.edkso.candiandian.domain.User;
        import org.springframework.data.jpa.repository.JpaRepository;


public interface UserDao extends JpaRepository<User,String> {

}
