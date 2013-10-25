declare
    cursor c_dummy
    is
        select 'Y'
          from dual;
    l_dummy varchar2(1);
    
begin
    open c_dummy;
    fetch c_dummy into l_dummy;
    close c_dummy;

    dbms_output.put_line('OK');
    
exception
    when others
    then
        dbms_output.put_line(sqlerrm);
end;
/
