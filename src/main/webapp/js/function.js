/**
 * 名称:function
 * 功能:在这里起中转作用以及判断向控制层传参是否为空
 * */
function addUser(){
    var form=document.forms[0];
    form.action="/userAdd";
    form.method="post";
    form.submit();
}

function userdel(){

           var id_user=document.getElementsByName("user_id");
           var is_selected=false;
           for(var i=0;i<id_user.length;i++)
           {
               if(id_user[i].checked){
                   is_selected=true;
               }
           }
           if(is_selected){
               document.frmuser.action="/toUserDel";
               document.frmuser.submit();
           }else
           {
               alert("请选择");
           }

}
function useradd(){
    document.location.replace("/toUserAdd");
}
function useredit() {
    var id_user=document.getElementsByName("user_id");
    var is_selected=false;
    for(var i=0;i<id_user.length;i++)
    {
        if(id_user[i].checked){
            is_selected=true;
        }
    }
    if(is_selected){
        document.frmuser.action="/toUserEdit";
        document.frmuser.submit();
    }else
    {
        alert("请选择");
    }

}

function cancel(){
    document.location.replace("/toUserList");
}

function tj(){

        document.frmuser.action="/userEdit";
        document.frmuser.submit();
}
function login(){
    document.location.replace("/toUserList");
}

function query(){
    document.location.replace("/toUserQuery");
}

function toquery(){
    document.frmuser.action="/userQuery";
    document.frmuser.submit();
}