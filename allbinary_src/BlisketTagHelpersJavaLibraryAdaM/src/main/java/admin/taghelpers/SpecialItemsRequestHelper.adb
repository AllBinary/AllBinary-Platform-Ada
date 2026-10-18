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


with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package; use org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.special.SpecialItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.special.SpecialItemsEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body admin.taghelpers.SpecialItemsRequestHelper_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package SpecialItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package;
   package SpecialItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.special.SpecialItemsEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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


   procedure Initialize (This : in out SpecialItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        SpecialItemsRequestHelper'Class (This).getFormData;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return SpecialItemsRequestHelper_Access is
      This : constant SpecialItemsRequestHelper_Access := new SpecialItemsRequestHelper;
   begin
      SpecialItemsRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
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
        values.put (This.basicItemData.ID, Java_Box (This.id));
        values.put (This.basicItemData.NUMBER, Java_Box (This.number));
        values.put (EntryData_Package.getInstance.ENABLE, Java_Box (This.enabled));
        values.put (SpecialItemData_Package.START_TIME, Java_Box (This.startTime));
        values.put (SpecialItemData_Package.END_TIME, Java_Box (This.endTime));
        values.put (This.basicItemData.PRICE, Java_Box (This.price));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (time));
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
            values := BasicArrayList_Access (BasicArrayListD_Package.Create);
            values.add (Java_Box (This.id));
            values.add (Java_Box (This.number));
            values.add (Java_Box (This.enabled));
            values.add (Java_Box (This.startTime));
            values.add (Java_Box (This.endTime));
            values.add (Java_Box (This.price));
            values.add (Java_Box (time));
            values.add (Java_Box (time));
            SpecialItemsEntityFactory_Package.getInstance.getSpecialItemsEntityInstance.insert (values);
            success := To_Unbounded_String ("Successfully inserted ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, SpecialItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SpecialItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("inserts()"), e);
            end if;
            return error;
                end;
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
                This.logUtil.putF (success, SpecialItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SpecialItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out SpecialItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Successful");
            values := SpecialItemsRequestHelper'Class (This).getHashMap;
            SpecialItemsEntityFactory_Package.getInstance.getSpecialItemsEntityInstance.update (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.id).append (CommonSeps_Package.getInstance.SPACE).append (success).toString, SpecialItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update: ") & This.id;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SpecialItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.SpecialItemsRequestHelper_Package;


