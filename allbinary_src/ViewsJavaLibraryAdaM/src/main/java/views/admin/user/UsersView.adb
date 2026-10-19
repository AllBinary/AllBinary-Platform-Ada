--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.business.user.UserDomNode_Package; use org.allbinary.business.user.UserDomNode_Package;
with org.allbinary.business.user.UsersData_Package; use org.allbinary.business.user.UsersData_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;

package body views.admin.user.UsersView_Package is

   package UserDomNode_Package renames Standard.org.allbinary.business.user.UserDomNode_Package;
   package UsersData_Package renames Standard.org.allbinary.business.user.UsersData_Package;
   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   procedure Initialize_Fields (This : in out UsersView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.userVector := null;
   end Initialize_Fields;


   procedure Initialize (This : in out UsersView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpContextView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UsersView_Access is
      This : constant UsersView_Access := new UsersView;
   begin
      UsersView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function toXmlNode (This : in out UsersView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      usersNode : Node_Access;
      size : Integer;
      userInterface : User_Access;
      node : Node_Access;
      index : Integer;
   begin
        begin
            usersNode := document.createElement (UsersData_Package.NAME);
            size := This.userVector.size;
            for index in 0 .. (size) - 1 loop
                userInterface := User_Access (This.userVector.get (index));
                if (userInterface) /= (null) then
                    node := UserDomNode_Package.Create (userInterface).toXmlNode (document);
                    usersNode.appendChild (node);
                else
                    This.logUtil.putF (To_Unbounded_String ("UserHelper"), UsersView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
                end if;
            end loop;
            return usersNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, UsersView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out UsersView) is
   begin
        UsersView'Class (This).addDomNodeInterface (DomNodeInterface_Access (UsersView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out UsersView) return Unbounded_String is
   begin
        begin
            UsersView'Class (This).addDomNodeInterfaces;
            return HttpContextView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, UsersView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out UsersView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UsersView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.user.UsersView_Package;


