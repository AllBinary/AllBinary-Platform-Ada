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


package body admin.taghelpers.UserHelper_Package is

   procedure Initialize_Fields (This : in out UserHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      Table_Package.Initialize (This);
      Initialize_Fields (This);
        This.hashMap := hashMap;
        This.pageContext := pageContext;
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.path := (URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        This.portion := Portion_Package.Create (hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return UserHelper_Access is
      This : constant UserHelper_Access := new UserHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function delete (This : in out UserHelper) return Unbounded_String is
      requestHashMap : HashMap_Access;
      userName : UserName_Access;
      stringBuffer : StringMaker_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            requestHashMap := RequestParams_Package.Create (This.request).toHashMap;
            userName := UserName_Package.Create (requestHashMap);
            UserEntityFactory_Package.getInstance.deleteWhere (UserData_Package.USERNAME, userName.get);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Successfully Removed the user with "));
            stringBuffer.append (UserData_Package.USERNAME);
            stringBuffer.append (To_Unbounded_String ("="));
            stringBuffer.append (userName.get);
            stringBuffer.append (To_Unbounded_String (" from to the user table"));
            success := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to remove user with ") & Java_Image (UserData_Package.USERNAME) & To_Unbounded_String (" from User table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   --  throws Exception
   function insert (This : in out UserHelper) return Unbounded_String is
      userInterface : UserInterface_Access;
      enable : Unbounded_String;
      values : BasicArrayList_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            userInterface := NewUserFactory_Package.getInstance (This.request, This.hashMap);
            enable := Unbounded_String (This.hashMap.get (EntryData_Package.getInstance.ENABLE));
            if not (StringValidationUtil_Package.getInstance.isEmpty (enable)) then
                userInterface.setEnable (enable);
            end if;
            values := userInterface.toVector;
            UserEntityFactory_Package.getInstance.insert (values);
            success := To_Unbounded_String ("New User Successfully added to the Users Table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("add()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add User");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("add()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function update (This : in out UserHelper) return Unbounded_String is
      user : UserInterface_Access;
      values : HashMap_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            user := NewUserFactory_Package.getInstance (This.request, This.hashMap);
            values := user.toHashMap;
            UserEntityFactory_Package.getInstance.update (user.getUserName, values);
            success := To_Unbounded_String ("New User Successfully added to the Users Table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add User");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   function drop (This : in out UserHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := UserEntityFactory_Package.getInstance.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (success, This'Unchecked_Access, This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop user table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out UserHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := UserEntityFactory_Package.getInstance.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create user table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out UserHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (UserEntityFactory_Package.getInstance, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out UserHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (UserEntityFactory_Package.getInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   procedure delete (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure insert (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure update (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

   procedure drop (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out UserHelper) is
      Java_Result : constant Unbounded_String := UserHelper'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

end admin.taghelpers.UserHelper_Package;


