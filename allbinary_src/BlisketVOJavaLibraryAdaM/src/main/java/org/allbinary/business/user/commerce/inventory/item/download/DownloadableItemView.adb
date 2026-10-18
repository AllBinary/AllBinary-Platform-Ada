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


package body org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package is

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
        hashMap.put (DownloadItemData_Package.VALID_TIME_YEARS, To_Unbounded_String (Java_Image ((yearDelta) - (year))));
        hashMap.put (DownloadItemData_Package.VALID_TIME_MONTHS, To_Unbounded_String (Java_Image ((monthDelta) - (month))));
        hashMap.put (DownloadItemData_Package.VALID_TIME_DAYS, To_Unbounded_String (Java_Image ((dayDelta) - (day))));
        hashMap.put (DownloadItemData_Package.VALID_TIME_HOURS, To_Unbounded_String (Java_Image ((hourDelta) - (hour))));
        hashMap.put (DownloadItemData_Package.VALID_TIME_MINUTES, To_Unbounded_String (Java_Image ((minuteDelta) - (minute))));
        hashMap.put (DownloadItemData_Package.VALID_TIME_SECONDS, To_Unbounded_String (Java_Image ((secondDelta) - (second))));
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
      Java_Result : constant Node_Access := DownloadableItemView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;


