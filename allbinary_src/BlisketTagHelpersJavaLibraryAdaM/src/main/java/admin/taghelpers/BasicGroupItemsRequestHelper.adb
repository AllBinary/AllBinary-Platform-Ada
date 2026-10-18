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


package body admin.taghelpers.BasicGroupItemsRequestHelper_Package is

   procedure Initialize_Fields (This : in out BasicGroupItemsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.itemOne := Null_Unbounded_String;
      This.itemTwo := Null_Unbounded_String;
      This.itemThree := Null_Unbounded_String;
      This.itemFour := Null_Unbounded_String;
      This.itemFive := Null_Unbounded_String;
      This.itemSix := Null_Unbounded_String;
      This.itemSeven := Null_Unbounded_String;
      This.itemEight := Null_Unbounded_String;
      This.itemNine := Null_Unbounded_String;
      This.itemTen := Null_Unbounded_String;
      This.timeEntered := Null_Unbounded_String;
      This.lastModified := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGroupItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        BasicGroupItemsRequestHelper'Class (This).getFormData;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicGroupItemsRequestHelper_Access is
      This : constant BasicGroupItemsRequestHelper_Access := new BasicGroupItemsRequestHelper;
   begin
      BasicGroupItemsRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out BasicGroupItemsRequestHelper) is
   begin
        This.id := This.request.getParameter (This.basicItemData.ID);
        This.itemOne := This.request.getParameter (BasicGroupItemData_Package.ITEM_ONE);
        This.itemTwo := This.request.getParameter (BasicGroupItemData_Package.ITEM_TWO);
        This.itemThree := This.request.getParameter (BasicGroupItemData_Package.ITEM_THREE);
        This.itemFour := This.request.getParameter (BasicGroupItemData_Package.ITEM_FOUR);
        This.itemFive := This.request.getParameter (BasicGroupItemData_Package.ITEM_FIVE);
        This.itemSix := This.request.getParameter (BasicGroupItemData_Package.ITEM_SIX);
        This.itemSeven := This.request.getParameter (BasicGroupItemData_Package.ITEM_SEVEN);
        This.itemEight := This.request.getParameter (BasicGroupItemData_Package.ITEM_EIGHT);
        This.itemNine := This.request.getParameter (BasicGroupItemData_Package.ITEM_NINE);
        This.itemTen := This.request.getParameter (BasicGroupItemData_Package.ITEM_TEN);
        This.timeEntered := This.request.getParameter (EntryData_Package.getInstance.TIMECREATED);
        This.lastModified := This.request.getParameter (EntryData_Package.getInstance.LASTMODIFIED);
   end getFormData;

   function getHashMap (This : in out BasicGroupItemsRequestHelper) return HashMap_Access is
      values : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (This.basicItemData.ID, Java_Box (This.id));
        values.put (BasicGroupItemData_Package.ITEM_ONE, Java_Box (This.itemOne));
        values.put (BasicGroupItemData_Package.ITEM_TWO, Java_Box (This.itemTwo));
        values.put (BasicGroupItemData_Package.ITEM_THREE, Java_Box (This.itemThree));
        values.put (BasicGroupItemData_Package.ITEM_FOUR, Java_Box (This.itemFour));
        values.put (BasicGroupItemData_Package.ITEM_FIVE, Java_Box (This.itemFive));
        values.put (BasicGroupItemData_Package.ITEM_SIX, Java_Box (This.itemSix));
        values.put (BasicGroupItemData_Package.ITEM_SEVEN, Java_Box (This.itemSeven));
        values.put (BasicGroupItemData_Package.ITEM_EIGHT, Java_Box (This.itemEight));
        values.put (BasicGroupItemData_Package.ITEM_NINE, Java_Box (This.itemNine));
        values.put (BasicGroupItemData_Package.ITEM_TEN, Java_Box (This.itemTen));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (time));
        return values;
   end getHashMap;

   function insert (This : in out BasicGroupItemsRequestHelper) return Unbounded_String is
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
            values.add (Java_Box (This.id));
            values.add (Java_Box (This.itemOne));
            values.add (Java_Box (This.itemTwo));
            values.add (Java_Box (This.itemThree));
            values.add (Java_Box (This.itemFour));
            values.add (Java_Box (This.itemFive));
            values.add (Java_Box (This.itemSix));
            values.add (Java_Box (This.itemSeven));
            values.add (Java_Box (This.itemEight));
            values.add (Java_Box (This.itemNine));
            values.add (Java_Box (This.itemTen));
            values.add (Java_Box (time));
            values.add (Java_Box (time));
            BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance.insert (values);
            success := To_Unbounded_String ("Successfully inserted ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, BasicGroupItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert ") & This.id & To_Unbounded_String (" into items table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicGroupItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("inserts()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out BasicGroupItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance.delete (This.id);
            success := To_Unbounded_String ("Successfully deleted");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, BasicGroupItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicGroupItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out BasicGroupItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Pricing Successful");
            values := BasicGroupItemsRequestHelper'Class (This).getHashMap;
            BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance.update (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.id).append (CommonSeps_Package.getInstance.SPACE).append (success).toString, BasicGroupItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update: ") & This.id;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicGroupItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.BasicGroupItemsRequestHelper_Package;


