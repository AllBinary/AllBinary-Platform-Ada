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


package body admin.taghelpers.BasicOptionItemsRequestHelper_Package is

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


   procedure Initialize (This : in out BasicOptionItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return BasicOptionItemsRequestHelper_Access is
      This : constant BasicOptionItemsRequestHelper_Access := new BasicOptionItemsRequestHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getFormData (This : in out BasicOptionItemsRequestHelper) is
   begin
        This.optionItem := BasicArrayListD_Package.Create;
        This.optionValue := BasicArrayListD_Package.Create;
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
        values.put (This.basicItemData.ID, This.id);
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
        values.put (EntryData_Package.getInstance.LASTMODIFIED, time);
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
            values := BasicArrayListD_Package.Create;
            values.add (This.id);
            size := This.optionValue.size;
            for index in 0 .. (size) - 1 loop
                values.add (This.optionValue.get (index));
                values.add (This.optionItem.get (index));
            end loop;
            values.add (time);
            values.add (time);
            BasicOptionItemsEntityFactory_Package.getInstance.getBasicOptionItemsEntityInstance.insert (values);
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

   function delete (This : in out BasicOptionItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            BasicOptionItemsEntityFactory_Package.getInstance.getBasicOptionItemsEntityInstance.delete (This.id);
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

   function update (This : in out BasicOptionItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Pricing Successful");
            values := This.getHashMap;
            BasicOptionItemsEntityFactory_Package.getInstance.getBasicOptionItemsEntityInstance.update (values);
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

   procedure getHashMap (This : in out BasicOptionItemsRequestHelper) is
      Java_Result : constant HashMap_Access := BasicOptionItemsRequestHelper'Class (This).getHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashMap;

   procedure insert (This : in out BasicOptionItemsRequestHelper) is
      Java_Result : constant Unbounded_String := BasicOptionItemsRequestHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure delete (This : in out BasicOptionItemsRequestHelper) is
      Java_Result : constant Unbounded_String := BasicOptionItemsRequestHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure update (This : in out BasicOptionItemsRequestHelper) is
      Java_Result : constant Unbounded_String := BasicOptionItemsRequestHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

end admin.taghelpers.BasicOptionItemsRequestHelper_Package;


