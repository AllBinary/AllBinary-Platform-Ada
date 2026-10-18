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
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.generator.ProductIdGenerator_Package; use org.allbinary.data.generator.ProductIdGenerator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package body org.allbinary.business.user.commerce.inventory.item.BasicItem_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package ProductIdGenerator_Package renames Standard.org.allbinary.data.generator.ProductIdGenerator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out BasicItem'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      This.downloads := Null_Unbounded_String;
      
      
      
      
      This.downloadable := False;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicItem'Class; itemHashMap_Param : access HashMap_Package.HashMap'Class) is
      itemHashMap : constant HashMap_Access := HashMap_Access (itemHashMap_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (This.commonStrings.START, BasicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(HashMap)"));
        end if;
        This.itemId := Java_Unbox (itemHashMap.get (This.basicItemData.ID));
        This.number := Java_Unbox (itemHashMap.get (This.basicItemData.NUMBER));
        This.inBaskets := Java_Unbox (itemHashMap.get (This.basicItemData.INBASKETS));
        This.weight := Java_Unbox (itemHashMap.get (This.basicItemData.WEIGHT));
        This.enabled := Java_Unbox (itemHashMap.get (EntryData_Package.getInstance.ENABLE));
        This.newOrUsed := Java_Unbox (itemHashMap.get (This.basicItemData.NEWORUSED));
        This.summary := Java_Unbox (itemHashMap.get (This.basicItemData.SUMMARY));
        This.distributor := Java_Unbox (itemHashMap.get (This.basicItemData.DISTRIBUTOR));
        This.idUsedByDistributor := Java_Unbox (itemHashMap.get (This.basicItemData.IDUSEDBYDISTRIBUTOR));
        This.producedBy := Java_Unbox (itemHashMap.get (This.basicItemData.PRODUCEDBY));
        This.productionDate := Java_Unbox (itemHashMap.get (This.basicItemData.PRODUCTIONDATE));
        This.startProductionDate := Java_Unbox (itemHashMap.get (This.basicItemData.STARTPRODUCTIONDATE));
        This.description := Java_Unbox (itemHashMap.get (This.basicItemData.DESCRIPTION));
        This.keywords := Java_Unbox (itemHashMap.get (This.basicItemData.KEYWORDS));
        This.category := Java_Unbox (itemHashMap.get (This.basicItemData.CATEGORY));
        This.type_Id := Java_Unbox (itemHashMap.get (This.basicItemData.TYPE_Id));
        This.smallImage := Java_Unbox (itemHashMap.get (This.basicItemData.SMALLIMAGE));
        This.mediumImage := Java_Unbox (itemHashMap.get (This.basicItemData.MEDIUMIMAGE));
        This.largeImage := Java_Unbox (itemHashMap.get (This.basicItemData.LARGEIMAGE));
        This.timeEntered := Java_Unbox (itemHashMap.get (EntryData_Package.getInstance.TIMECREATED));
        This.lastModified := Java_Unbox (itemHashMap.get (EntryData_Package.getInstance.LASTMODIFIED));
        This.price := Money_Package.Create (Java_Unbox (itemHashMap.get (This.basicItemData.PRICE)));
        This.comment := Java_Unbox (itemHashMap.get (This.basicItemData.COMMENT));
        This.customs := Java_Unbox (itemHashMap.get (This.basicItemData.CUSTOMS));
        BasicItem'Class (This).setDownloads (Java_Unbox (itemHashMap.get (This.basicItemData.DOWNLOADS)));
        This.groups := Java_Unbox (itemHashMap.get (This.basicItemData.GROUPS));
        This.options := Java_Unbox (itemHashMap.get (This.basicItemData.OPTIONS));
        This.permissions := Java_Unbox (itemHashMap.get (This.basicItemData.PERMISSIONS));
        This.specials := Java_Unbox (itemHashMap.get (This.basicItemData.SPECIALS));
   end Initialize;

   function Create (itemHashMap_Param : access HashMap_Package.HashMap'Class) return BasicItem_Access is
      This : constant BasicItem_Access := new BasicItem;
   begin
      BasicItem_Package.Initialize (This.all, itemHashMap_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicItem'Class) is
      EMPTY : Unbounded_String;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (This.commonStrings.START, BasicItem_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        EMPTY := StringUtil_Package.getInstance.EMPTY_STRING;
        This.itemId := ProductIdGenerator_Package.Create.getNext;
        This.number := CommonPhoneStrings_Package.getInstance.ZERO;
        This.inBaskets := EMPTY;
        This.weight := EMPTY;
        This.enabled := EMPTY;
        This.newOrUsed := EMPTY;
        This.summary := EMPTY;
        This.distributor := EMPTY;
        This.idUsedByDistributor := EMPTY;
        This.producedBy := EMPTY;
        This.productionDate := EMPTY;
        This.startProductionDate := EMPTY;
        This.description := EMPTY;
        This.keywords := EMPTY;
        This.category := EMPTY;
        This.type_Id := EMPTY;
        This.smallImage := EMPTY;
        This.mediumImage := EMPTY;
        This.largeImage := EMPTY;
        This.timeEntered := EMPTY;
        This.lastModified := EMPTY;
        This.price := Money_Package.Create;
        This.comment := EMPTY;
        This.customs := EMPTY;
        BasicItem'Class (This).setDownloads (EMPTY);
        This.groups := EMPTY;
        This.options := EMPTY;
        This.permissions := EMPTY;
        This.specials := EMPTY;
   end Initialize;

   function Create return BasicItem_Access is
      This : constant BasicItem_Access := new BasicItem;
   begin
      BasicItem_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setId (This : in out BasicItem; itemId : Unbounded_String) is
   begin
        This.itemId := itemId;
   end setId;

   procedure setNumber (This : in out BasicItem; number : Unbounded_String) is
   begin
        This.number := number;
   end setNumber;

   procedure setInBaskets (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.inBaskets := value;
   end setInBaskets;

   procedure setWeight (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.weight := value;
   end setWeight;

   procedure setNewOrUsed (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.newOrUsed := value;
   end setNewOrUsed;

   procedure setSummary (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.summary := value;
   end setSummary;

   procedure setDistributor (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.distributor := value;
   end setDistributor;

   procedure setIdUsedByDistributor (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.idUsedByDistributor := value;
   end setIdUsedByDistributor;

   procedure setProducedBy (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.producedBy := value;
   end setProducedBy;

   procedure setProductionDate (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.productionDate := value;
   end setProductionDate;

   procedure setStartProductionDate (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.startProductionDate := value;
   end setStartProductionDate;

   procedure setDescription (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.description := value;
   end setDescription;

   procedure setKeywords (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.keywords := value;
   end setKeywords;

   procedure setCategory (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.category := value;
   end setCategory;

   procedure setType (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.type_Id := value;
   end setType;

   procedure setSmallImage (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.smallImage := value;
   end setSmallImage;

   procedure setMediumImage (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.mediumImage := value;
   end setMediumImage;

   procedure setLargeImage (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.largeImage := value;
   end setLargeImage;

   procedure setTimeEntered (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.timeEntered := value;
   end setTimeEntered;

   procedure setLastModified (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.lastModified := value;
   end setLastModified;

   procedure setPrice (This : in out BasicItem; value_Param : access Money_Package.Money'Class) is
      value : constant Money_Access := Money_Access (value_Param);
   begin
        This.price := value;
   end setPrice;

   procedure setComment (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.comment := value;
   end setComment;

   procedure setCustoms (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.customs := value;
   end setCustoms;

   procedure setDownloads (This : in out BasicItem; value : Unbounded_String) is
      downloadInteger : Integer;
   begin
        This.downloads := value;
        if not (StringValidationUtil_Package.getInstance.isEmpty (This.downloads)) then
            downloadInteger := To_Unbounded_String (Java_Image (This.downloads));
            if (Integer (downloadInteger)) /= (0) then
                BasicItem'Class (This).setDownloadable (True);
            end if;
        end if;
   end setDownloads;

   procedure setGroups (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.groups := value;
   end setGroups;

   procedure setOptions (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.options := value;
   end setOptions;

   procedure setPermissions (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.permissions := value;
   end setPermissions;

   procedure setSpecials (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.specials := value;
   end setSpecials;

   procedure setEnabled (This : in out BasicItem; value : Unbounded_String) is
   begin
        This.enabled := value;
   end setEnabled;

   function getId (This : in out BasicItem) return Unbounded_String is
   begin
        return This.itemId;
   end getId;

   function getNumber (This : in out BasicItem) return Unbounded_String is
   begin
        return This.number;
   end getNumber;

   function getInBaskets (This : in out BasicItem) return Unbounded_String is
   begin
        return This.inBaskets;
   end getInBaskets;

   function getWeight (This : in out BasicItem) return Unbounded_String is
   begin
        return This.weight;
   end getWeight;

   function getNewOrUsed (This : in out BasicItem) return Unbounded_String is
   begin
        return This.newOrUsed;
   end getNewOrUsed;

   function getSummary (This : in out BasicItem) return Unbounded_String is
   begin
        return This.summary;
   end getSummary;

   function getDistributor (This : in out BasicItem) return Unbounded_String is
   begin
        return This.distributor;
   end getDistributor;

   function getIdUsedByDistributor (This : in out BasicItem) return Unbounded_String is
   begin
        return This.idUsedByDistributor;
   end getIdUsedByDistributor;

   function getProducedBy (This : in out BasicItem) return Unbounded_String is
   begin
        return This.producedBy;
   end getProducedBy;

   function getProductionDate (This : in out BasicItem) return Unbounded_String is
   begin
        return This.productionDate;
   end getProductionDate;

   function getStartProductionDate (This : in out BasicItem) return Unbounded_String is
   begin
        return This.startProductionDate;
   end getStartProductionDate;

   function getDescription (This : in out BasicItem) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getKeywords (This : in out BasicItem) return Unbounded_String is
   begin
        return This.keywords;
   end getKeywords;

   function getCategory (This : in out BasicItem) return Unbounded_String is
   begin
        return This.category;
   end getCategory;

   function getType (This : in out BasicItem) return Unbounded_String is
   begin
        return This.type_Id;
   end getType;

   function getSmallImage (This : in out BasicItem) return Unbounded_String is
   begin
        return This.smallImage;
   end getSmallImage;

   function getMediumImage (This : in out BasicItem) return Unbounded_String is
   begin
        return This.mediumImage;
   end getMediumImage;

   function getLargeImage (This : in out BasicItem) return Unbounded_String is
   begin
        return This.largeImage;
   end getLargeImage;

   function getTimeEntered (This : in out BasicItem) return Unbounded_String is
   begin
        return This.timeEntered;
   end getTimeEntered;

   function getLastModified (This : in out BasicItem) return Unbounded_String is
   begin
        return This.lastModified;
   end getLastModified;

   function getPrice (This : in out BasicItem) return Money_Access is
   begin
        return This.price;
   end getPrice;

   function getComment (This : in out BasicItem) return Unbounded_String is
   begin
        return This.comment;
   end getComment;

   function getCustoms (This : in out BasicItem) return Unbounded_String is
   begin
        return This.customs;
   end getCustoms;

   function getDownloads (This : in out BasicItem) return Unbounded_String is
   begin
        return This.downloads;
   end getDownloads;

   function getGroups (This : in out BasicItem) return Unbounded_String is
   begin
        return This.groups;
   end getGroups;

   function getOptions (This : in out BasicItem) return Unbounded_String is
   begin
        return This.options;
   end getOptions;

   function getPermissions (This : in out BasicItem) return Unbounded_String is
   begin
        return This.permissions;
   end getPermissions;

   function getSpecials (This : in out BasicItem) return Unbounded_String is
   begin
        return This.specials;
   end getSpecials;

   procedure setDownloadable (This : in out BasicItem; downloadable : Boolean) is
   begin
        This.downloadable := downloadable;
   end setDownloadable;

   function isDownloadable (This : in out BasicItem) return Boolean is
   begin
        return This.downloadable;
   end isDownloadable;

   function getEnabled (This : in out BasicItem) return Unbounded_String is
   begin
        return This.enabled;
   end getEnabled;

   function getTotal (This : in out BasicItem) return Money_Access is
      itemTotal : Money_Access;
   begin
        itemTotal := Money_Package.Create (This.price);
        itemTotal.multiply (This.number.intValue);
        return itemTotal;
   end getTotal;

   function toHashMap (This : in out BasicItem) return HashMap_Access is
      hashMap : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (This.commonStrings.START, BasicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap"));
        end if;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (This.basicItemData.ID, Java_Box (This.itemId));
        hashMap.put (This.basicItemData.NUMBER, Java_Box (This.number));
        hashMap.put (This.basicItemData.INBASKETS, Java_Box (This.inBaskets));
        hashMap.put (This.basicItemData.WEIGHT, Java_Box (This.weight));
        hashMap.put (EntryData_Package.getInstance.ENABLE, Java_Box (This.enabled));
        hashMap.put (This.basicItemData.NEWORUSED, Java_Box (This.newOrUsed));
        hashMap.put (This.basicItemData.SUMMARY, Java_Box (This.summary));
        hashMap.put (This.basicItemData.DISTRIBUTOR, Java_Box (This.distributor));
        hashMap.put (This.basicItemData.IDUSEDBYDISTRIBUTOR, Java_Box (This.idUsedByDistributor));
        hashMap.put (This.basicItemData.PRODUCEDBY, Java_Box (This.producedBy));
        hashMap.put (This.basicItemData.PRODUCTIONDATE, Java_Box (This.productionDate));
        hashMap.put (This.basicItemData.STARTPRODUCTIONDATE, Java_Box (This.startProductionDate));
        hashMap.put (This.basicItemData.DESCRIPTION, Java_Box (This.description));
        hashMap.put (This.basicItemData.KEYWORDS, Java_Box (This.keywords));
        hashMap.put (This.basicItemData.CATEGORY, Java_Box (This.category));
        hashMap.put (This.basicItemData.TYPE_Id, Java_Box (This.type_Id));
        hashMap.put (This.basicItemData.SMALLIMAGE, Java_Box (This.smallImage));
        hashMap.put (This.basicItemData.MEDIUMIMAGE, Java_Box (This.mediumImage));
        hashMap.put (This.basicItemData.LARGEIMAGE, Java_Box (This.largeImage));
        calendar := Calendar_Package.getInstance;
        time := calendar.getTimeInMillis.toString;
        hashMap.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (time));
        hashMap.put (This.basicItemData.PRICE, Java_Box (This.price.toString));
        hashMap.put (This.basicItemData.COMMENT, Java_Box (This.comment));
        hashMap.put (This.basicItemData.CUSTOMS, Java_Box (This.customs));
        hashMap.put (This.basicItemData.DOWNLOADS, BasicItem'Class (This).getDownloads);
        hashMap.put (This.basicItemData.GROUPS, Java_Box (This.groups));
        hashMap.put (This.basicItemData.OPTIONS, Java_Box (This.options));
        hashMap.put (This.basicItemData.PERMISSIONS, Java_Box (This.permissions));
        hashMap.put (This.basicItemData.SPECIALS, Java_Box (This.specials));
        return hashMap;
   end toHashMap;

   function toVector (This : in out BasicItem) return BasicArrayList_Access is
      values : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (This.commonStrings.START, BasicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("toVector"));
        end if;
        values := BasicArrayList_Access (BasicArrayListD_Package.Create);
        values.add (This.itemId);
        values.add (This.number);
        values.add (This.inBaskets);
        values.add (This.weight);
        values.add (This.enabled);
        values.add (This.newOrUsed);
        values.add (This.summary);
        values.add (This.distributor);
        values.add (This.idUsedByDistributor);
        values.add (This.producedBy);
        values.add (This.productionDate);
        values.add (This.startProductionDate);
        values.add (This.description);
        values.add (This.keywords);
        values.add (This.category);
        values.add (This.type_Id);
        values.add (BasicItem'Class (This).getSmallImage);
        values.add (BasicItem'Class (This).getMediumImage);
        values.add (BasicItem'Class (This).getLargeImage);
        calendar := Calendar_Package.getInstance;
        time := calendar.getTimeInMillis.toString;
        values.add (time);
        values.add (time);
        values.add (This.price.toString);
        values.add (This.comment);
        values.add (This.customs);
        values.add (BasicItem'Class (This).getDownloads);
        values.add (This.groups);
        values.add (This.options);
        values.add (This.permissions);
        values.add (This.specials);
        return values;
   end toVector;

   --  throws Exception
   function getKey (This : in out BasicItem) return Java_Object_Access is
   begin
        return Java_Object_Access (BasicItem'Class (This).getId);
   end getKey;

end org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;


