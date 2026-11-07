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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Set_Package renames Standard.java.util.Set_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype DownloadableItem_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access;
   function "=" (Left, Right : DownloadableItem_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array;
   function "=" (Left, Right : DownloadableItem_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   procedure Initialize_Fields (This : in out DownloadableItemView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadableItemView'Class; downloadableItem_Param : access DownloadableItem_Package.DownloadableItem'Class) is
      downloadableItem : constant DownloadableItem_Access := DownloadableItem_Access (downloadableItem_Param);
   begin
      Initialize_Fields (This);
        This.downloadableItem := downloadableItem;
   end Initialize;

   function Create (downloadableItem_Param : access DownloadableItem_Package.DownloadableItem'Class) return DownloadableItemView_Access is
      This : constant DownloadableItemView_Access := new DownloadableItemView;
   begin
      DownloadableItemView_Package.Initialize (This.all, downloadableItem_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out DownloadableItemView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      totalTime : Long_Long_Integer;
      calendar : Calendar_Access;
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      yearDelta : Integer;
      monthDelta : Integer;
      dayDelta : Integer;
      hourDelta : Integer;
      minuteDelta : Integer;
      secondDelta : Integer;
      keySet : Set_Access;
      node : Node_Access;
      stringUtil : StringUtil_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      name : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (This.commonStrings.START, DownloadableItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
        end if;
        hashMap := This.downloadableItem.toHashMap;
        totalTime := This.downloadableItem.getValidTime.longValue;
        calendar := Calendar_Package.getInstance;
        year := calendar.get (Calendar_Package.YEAR);
        month := calendar.get (Calendar_Package.MONTH);
        day := calendar.get (Calendar_Package.DAY_OF_MONTH);
        hour := calendar.get (Calendar_Package.HOUR);
        minute := calendar.get (Calendar_Package.MINUTE);
        second := calendar.get (Calendar_Package.SECOND);
        calendar.setTimeInMillis ((calendar.getTimeInMillis) + (totalTime));
        yearDelta := calendar.get (Calendar_Package.YEAR);
        monthDelta := calendar.get (Calendar_Package.MONTH);
        dayDelta := calendar.get (Calendar_Package.DAY_OF_MONTH);
        hourDelta := calendar.get (Calendar_Package.HOUR);
        minuteDelta := calendar.get (Calendar_Package.MINUTE);
        secondDelta := calendar.get (Calendar_Package.SECOND);
        hashMap.put (DownloadItemData_Package.VALID_TIME_YEARS, Integer ((yearDelta) - (year)));
        hashMap.put (DownloadItemData_Package.VALID_TIME_MONTHS, Integer ((monthDelta) - (month)));
        hashMap.put (DownloadItemData_Package.VALID_TIME_DAYS, Integer ((dayDelta) - (day)));
        hashMap.put (DownloadItemData_Package.VALID_TIME_HOURS, Integer ((hourDelta) - (hour)));
        hashMap.put (DownloadItemData_Package.VALID_TIME_MINUTES, Integer ((minuteDelta) - (minute)));
        hashMap.put (DownloadItemData_Package.VALID_TIME_SECONDS, Integer ((secondDelta) - (second)));
        keySet := hashMap.keySet;
        node := document.createElement (DownloadItemData_Package.NAME);
        stringUtil := StringUtil_Package.getInstance;
        nameArray := keySet.toArray;
        size := nameArray'Length;
        for index in 0 .. (size) - 1 loop
            name := Java_Unbox (nameArray (index));
            value := Java_Unbox (hashMap.get (Java_Box (name)));
            value := stringUtil.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        return node;
   end toXmlNode;

   function toXmlDoc (This : in out DownloadableItemView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function view (This : in out DownloadableItemView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end view;

   procedure toXmlNode (This : in out DownloadableItemView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DownloadableItemView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;


