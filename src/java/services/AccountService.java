package services;

import java.util.List;
import database.UserDB;
import models.User;

/**
 *
 * @author awarsyle
 */
public class AccountService {

    private UserDB userDB;
    private final String path;

    public AccountService(String path) {
        this.path = path;
    }

    // return a list of users on page "page" of page "pageSize"
    // pages start counting from 1
    public List<User> getAccounts(int page, int pageSize) throws Exception {
        userDB = new UserDB(path);
        int offset = (page - 1) * pageSize;
        int count = pageSize;
        List<User> users = userDB.getActiveUsers(offset, count);
        return users;
    }

    // return the User based on their username
    public User getAccount(String username) throws Exception {
        userDB = new UserDB(path);
        return userDB.getUser(username);
    }
}
