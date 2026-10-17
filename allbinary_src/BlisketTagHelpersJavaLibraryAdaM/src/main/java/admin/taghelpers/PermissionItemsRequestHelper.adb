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


package body admin.taghelpers.PermissionItemsRequestHelper_Package is

   procedure Initialize_Fields (This : in out PermissionItemsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.enabled := Null_Unbounded_String;
      This.number := Null_Unbounded_String;
      This.who := Null_Unbounded_String;
      This.what := Null_Unbounded_String;
      This.type_Id := Null_Unbounded_String;
      This.remoteAddr := Null_Unbounded_String;
      This.startTime := Null_Unbounded_String;
      This.endTime := Null_Unbounded_String;
      This.price := Null_Unbounded_String;
      This.timeEntered := Null_Unbounded_String;
      This.lastModified := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out PermissionItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return PermissionItemsRequestHelper_Access is
      This : constant PermissionItemsRequestHelper_Access := new PermissionItemsRequestHelper;
   begin
      PermissionItemsRequestHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getFormData (This : in out PermissionItemsRequestHelper) is
   begin
        This.id := This.request.getParameter (This.basicItemData.ID);
        This.number := This.request.getParameter (This.basicItemData.NUMBER);
        This.enabled := This.request.getParameter (EntryData_Package.getInstance.ENABLE);
        This.who := This.request.getParameter (PermissionItemData_Package.WHO);
        This.what := This.request.getParameter (PermissionItemData_Package.WHAT);
        This.type_Id := This.request.getParameter (PermissionItemData_Package.TYPE_Id);
        This.remoteAddr := This.request.getParameter (PermissionItemData_Package.REMOTE_ADDR);
        This.startTime := This.request.getParameter (PermissionItemData_Package.START_TIME);
        This.endTime := This.request.getParameter (PermissionItemData_Package.END_TIME);
        This.price := This.request.getParameter (This.basicItemData.PRICE);
        This.timeEntered := This.request.getParameter (EntryData_Package.getInstance.TIMECREATED);
        This.lastModified := This.request.getParameter (EntryData_Package.getInstance.LASTMODIFIED);
   end getFormData;

   function getHashMap (This : in out PermissionItemsRequestHelper) return HashMap_Access is
      values : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (This.basicItemData.ID, This.id);
        values.put (This.basicItemData.NUMBER, This.number);
        values.put (EntryData_Package.getInstance.ENABLE, This.enabled);
        values.put (PermissionItemData_Package.WHO, This.who);
        values.put (PermissionItemData_Package.WHAT, This.what);
        values.put (PermissionItemData_Package.TYPE_Id, This.type_Id);
        values.put (PermissionItemData_Package.REMOTE_ADDR, This.remoteAddr);
        values.put (PermissionItemData_Package.START_TIME, This.startTime);
        values.put (PermissionItemData_Package.END_TIME, This.endTime);
        values.put (This.basicItemData.PRICE, This.price);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return values;
   end getHashMap;

   function insert (This : in out PermissionItemsRequestHelper) return Unbounded_String is
      calendar : Calendar_Access;
      time : Unbounded_String;
      values : BasicArrayList_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            values := BasicArrayListD_Package.Create;
            values.add (This.id);
            values.add (This.number);
            values.add (This.enabled);
            values.add (This.who);
            values.add (This.what);
            values.add (This.type_Id);
            values.add (This.remoteAddr);
            values.add (This.startTime);
            values.add (This.endTime);
            values.add (This.price);
            values.add (time);
            values.add (time);
            PermissionItemsEntityFactory_Package.getInstance.getPermissionItemsEntityInstance.insert (values);
            success := To_Unbounded_String ("Successfully inserted ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("inserts()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out PermissionItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            PermissionItemsEntityFactory_Package.getInstance.getPermissionItemsEntityInstance.delete (This.id);
            success := To_Unbounded_String ("Successfully deleted");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out PermissionItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Pricing Successful");
            values := This.getHashMap;
            PermissionItemsEntityFactory_Package.getInstance.getPermissionItemsEntityInstance.update (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.id).append (CommonSeps_Package.getInstance.SPACE).append (success).toString, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update: ") & This.id;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.PermissionItemsRequestHelper_Package;


