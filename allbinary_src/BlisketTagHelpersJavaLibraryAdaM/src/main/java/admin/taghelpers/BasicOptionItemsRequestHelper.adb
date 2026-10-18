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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package; use org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body admin.taghelpers.BasicOptionItemsRequestHelper_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package BasicOptionItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;
   package BasicOptionItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out BasicOptionItemsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.optionOneTitle := Null_Unbounded_String;
      This.defaultOptionItem := Null_Unbounded_String;
      This.defaultOptionValue := Null_Unbounded_String;
      This.optionItem := null;
      This.optionValue := null;
      This.timeEntered := Null_Unbounded_String;
      This.lastModified := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicOptionItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        BasicOptionItemsRequestHelper'Class (This).getFormData;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicOptionItemsRequestHelper_Access is
      This : constant BasicOptionItemsRequestHelper_Access := new BasicOptionItemsRequestHelper;
   begin
      BasicOptionItemsRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out BasicOptionItemsRequestHelper) is
   begin
        This.optionItem := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.optionValue := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.id := This.request.getParameter (This.basicItemData.ID);
        This.optionOneTitle := This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_TITLE);
        This.defaultOptionItem := This.request.getParameter (BasicOptionItemData_Package.DEFAULT_OPTION_ITEM);
        This.defaultOptionValue := This.request.getParameter (BasicOptionItemData_Package.DEFAULT_OPTION_VALUE);
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_ONE_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_ONE_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_TWO_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_TWO_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_THREE_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_THREE_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_FOUR_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_FOUR_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_FIVE_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_FIVE_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_SIX_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_SIX_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_SEVEN_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_SEVEN_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_EIGHT_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_EIGHT_VALUE));
        This.optionItem.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_NINE_ITEM));
        This.optionValue.add (This.request.getParameter (BasicOptionItemData_Package.OPTION_ONE_NINE_VALUE));
        This.timeEntered := This.request.getParameter (EntryData_Package.getInstance.TIMECREATED);
        This.lastModified := This.request.getParameter (EntryData_Package.getInstance.LASTMODIFIED);
   end getFormData;

   function getHashMap (This : in out BasicOptionItemsRequestHelper) return HashMap_Access is
      values : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (This.basicItemData.ID, Java_Box (This.id));
        values.put (BasicOptionItemData_Package.OPTION_ONE_ONE_ITEM, This.optionItem.get (0));
        values.put (BasicOptionItemData_Package.OPTION_ONE_ONE_VALUE, This.optionValue.get (0));
        values.put (BasicOptionItemData_Package.OPTION_ONE_TWO_ITEM, This.optionItem.get (1));
        values.put (BasicOptionItemData_Package.OPTION_ONE_TWO_VALUE, This.optionValue.get (1));
        values.put (BasicOptionItemData_Package.OPTION_ONE_THREE_ITEM, This.optionItem.get (2));
        values.put (BasicOptionItemData_Package.OPTION_ONE_THREE_VALUE, This.optionValue.get (2));
        values.put (BasicOptionItemData_Package.OPTION_ONE_FOUR_ITEM, This.optionItem.get (3));
        values.put (BasicOptionItemData_Package.OPTION_ONE_FOUR_VALUE, This.optionValue.get (3));
        values.put (BasicOptionItemData_Package.OPTION_ONE_FIVE_ITEM, This.optionItem.get (4));
        values.put (BasicOptionItemData_Package.OPTION_ONE_FIVE_VALUE, This.optionValue.get (4));
        values.put (BasicOptionItemData_Package.OPTION_ONE_SIX_ITEM, This.optionItem.get (5));
        values.put (BasicOptionItemData_Package.OPTION_ONE_SIX_VALUE, This.optionValue.get (5));
        values.put (BasicOptionItemData_Package.OPTION_ONE_SEVEN_ITEM, This.optionItem.get (6));
        values.put (BasicOptionItemData_Package.OPTION_ONE_SEVEN_VALUE, This.optionValue.get (6));
        values.put (BasicOptionItemData_Package.OPTION_ONE_EIGHT_ITEM, This.optionItem.get (7));
        values.put (BasicOptionItemData_Package.OPTION_ONE_EIGHT_VALUE, This.optionValue.get (7));
        values.put (BasicOptionItemData_Package.OPTION_ONE_NINE_ITEM, This.optionItem.get (8));
        values.put (BasicOptionItemData_Package.OPTION_ONE_NINE_VALUE, This.optionValue.get (8));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (time));
        return values;
   end getHashMap;

   function insert (This : in out BasicOptionItemsRequestHelper) return Unbounded_String is
      calendar : Calendar_Access;
      time : Unbounded_String;
      values : BasicArrayList_Access;
      size : Integer;
      index : Integer;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            values := BasicArrayList_Access (BasicArrayListD_Package.Create);
            values.add (Java_Box (This.id));
            size := This.optionValue.size;
            for index in 0 .. (size) - 1 loop
                values.add (This.optionValue.get (index));
                values.add (This.optionItem.get (index));
            end loop;
            values.add (Java_Box (time));
            values.add (Java_Box (time));
            BasicOptionItemsEntityFactory_Package.getInstance.getBasicOptionItemsEntityInstance.insert (values);
            success := To_Unbounded_String ("Successfully inserted ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, BasicOptionItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicOptionItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("inserts()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out BasicOptionItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            BasicOptionItemsEntityFactory_Package.getInstance.getBasicOptionItemsEntityInstance.delete (This.id);
            success := To_Unbounded_String ("Successfully deleted");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, BasicOptionItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicOptionItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out BasicOptionItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Pricing Successful");
            values := BasicOptionItemsRequestHelper'Class (This).getHashMap;
            BasicOptionItemsEntityFactory_Package.getInstance.getBasicOptionItemsEntityInstance.update (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.id).append (CommonSeps_Package.getInstance.SPACE).append (success).toString, BasicOptionItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update: ") & This.id;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicOptionItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.BasicOptionItemsRequestHelper_Package;


