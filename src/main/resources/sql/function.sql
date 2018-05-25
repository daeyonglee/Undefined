-- create function

DROP FUNCTION fun_getRole;

CREATE OR REPLACE FUNCTION fun_getRole(v_email VARCHAR, v_pw VARCHAR)
    RETURN VARCHAR
IS
    v_role VARCHAR(50);
BEGIN
    SELECT role into v_role
      FROM (SELECT user_no as no
                 , user_email as email
                 , user_pw as pw
                 , 'users' as role
              FROM users
            UNION
            SELECT admin_no as no
                 , admin_email as email
                 , admin_pw as pw
                 , 'admin' as role
              FROM admin
            UNION
            SELECT dc_no as no
                 , dc_email as email
                 , dc_pw as pw
                 , 'dc' as role
              FROM dress_company
            UNION
            SELECT mc_no as no
                 , mc_email as email
                 , mc_pw as pw
                 , 'mc' as role
              FROM makeup_company
            UNION
            SELECT sc_no as no
                 , sc_email as email
                 , sc_pw as pw
                 , 'sc' as role
              FROM studio_company) M
     WHERE email = v_email
       AND pw = v_pw;

      return v_role;

exception
    when others then
        dbms_output.put_line('exception occurred! (' || sqlcode || ') : ' || sqlerrm);
        return '';
end;
