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


package body admin.taghelpers.SpecialItemsRequestHelper_Package is

   procedure Initialize_Fields (This : in out SpecialItemsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.enabled := Null_Unbounded_String;
      This.number := Null_Unbounded_String;
      This.startTime := Null_Unbounded_String;
      This.endTime := Null_Unbounded_String;
      This.price := Null_Unbounded_String;
      This.timeEntered := Null_Unbounded_String;
      This.lastModified := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return SpecialItemsRequestHelper_Access is
      This : constant SpecialItemsRequestHelper_Access := new SpecialItemsRequestHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getFormData (This : in out SpecialItemsRequestHelper) is
   begin
        This.id := This.request.getParameter (This.basicItemData.ID);
        This.number := This.request.getParameter (This.basicItemData.NUMBER);
        This.enabled := This.request.getParameter (EntryData_Package.getInstance.ENABLE);
        This.startTime := This.request.getParameter (SpecialItemData_Package.START_TIME);
        This.endTime := This.request.getParameter (SpecialItemData_Package.END_TIME);
        This.price := This.request.getParameter (This.basicItemData.PRICE);
        This.timeEntered := This.request.getParameter (EntryData_Package.getInstance.TIMECREATED);
        This.lastModified := This.request.getParameter (EntryData_Package.getInstance.LASTMODIFIED);
   end getFormData;

   function getHashMap (This : in out SpecialItemsRequestHelper) return HashMap_Access is
      values : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (This.basicItemData.ID, This.id);
        values.put (This.basicItemData.NUMBER, This.number);
        values.put (EntryData_Package.getInstance.ENABLE, This.enabled);
        values.put (SpecialItemData_Package.START_TIME, This.startTime);
        values.put (SpecialItemData_Package.END_TIME, This.endTime);
        values.put (This.basicItemData.PRICE, This.price);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return values;
   end getHashMap;

   function insert (This : in out SpecialItemsRequestHelper) return Unbounded_String is
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
            values.add (This.startTime);
            values.add (This.endTime);
            values.add (This.price);
            values.add (time);
            values.add (time);
            SpecialItemsEntityFactory_Package.getInstance.getSpecialItemsEntityInstance.insert (values);
            success := To_Unbounded_String ("Successfully inserted ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to insert ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("inserts()"), e);
            end if;
            return error;
        end;
   end insert;

   function delete (This : in out SpecialItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            SpecialItemsEntityFactory_Package.getInstance.getSpecialItemsEntityInstance.delete (This.id);
            success := To_Unbounded_String ("Successfully deleted");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
        end;
   end delete;

   function update (This : in out SpecialItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Successful");
            values := This.getHashMap;
            SpecialItemsEntityFactory_Package.getInstance.getSpecialItemsEntityInstance.update (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.id).append (CommonSeps_Package.getInstance.SPACE).append (success).toString, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to update: ") & This.id;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
        end;
   end update;

   procedure getHashMap (This : in out SpecialItemsRequestHelper) is
      Java_Result : constant HashMap_Access := SpecialItemsRequestHelper'Class (This).getHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashMap;

   procedure insert (This : in out SpecialItemsRequestHelper) is
      Java_Result : constant Unbounded_String := SpecialItemsRequestHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure delete (This : in out SpecialItemsRequestHelper) is
      Java_Result : constant Unbounded_String := SpecialItemsRequestHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure update (This : in out SpecialItemsRequestHelper) is
      Java_Result : constant Unbounded_String := SpecialItemsRequestHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

end admin.taghelpers.SpecialItemsRequestHelper_Package;


