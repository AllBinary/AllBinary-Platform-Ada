-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.image.ImageFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImageWaitCompleteUtil_Package is

   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   procedure Initialize_Fields (This : in out ImageWaitCompleteUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (18000);
      This.allTimeDelayHelper := TimeDelayHelper_Package.Create (120000);
   end Initialize_Fields;


   procedure Initialize (This : in out ImageWaitCompleteUtil'Class) is
   begin
      ImageCompleteUtil_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageWaitCompleteUtil_Access is
      This : constant ImageWaitCompleteUtil_Access := new ImageWaitCompleteUtil;
   begin
      ImageWaitCompleteUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure waitForImage (This : in out ImageWaitCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        This.timeDelayHelper.setStartTimeTNT;
        ImageWaitCompleteUtil'Class (This).waitForATime (image, name, This.timeDelayHelper);
   end waitForImage;

   --  throws Exception
   procedure handleTimeout (This : in out ImageWaitCompleteUtil; name : Unbounded_String) is
   begin
        if This.timeDelayHelper.isTimeTNT then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ") & name));
        end if;
   end handleTimeout;

   --  throws Exception
   procedure waitForATime (This : in out ImageWaitCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      timeDelayHelper : constant TimeDelayHelper_Access := TimeDelayHelper_Access (timeDelayHelper_Param);
      playnImage : PlaynImage_Access;
      playnCoreImage : Image_Access;
   begin
        playnImage := PlaynImage_Access (image);
        playnCoreImage := Image_Access (playnImage.getImage);
        while (not (playnCoreImage.isReady)) or else (((playnCoreImage.width) + (playnCoreImage.height)) <= (0)) loop
            if timeDelayHelper.isTimeTNT then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ") & name));
            end if;
        end loop;
        if not (image.isReady) then
            image.init (image.getImage);
        end if;
   end waitForATime;

   --  throws Exception
   procedure waitForAll (This : in out ImageWaitCompleteUtil) is
      hashtable : ABHashtable_Access;
      objectArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        This.allTimeDelayHelper.setStartTimeTNT;
        hashtable := GameFeatureImageCacheFactory_Package.getInstance.getHashtableP;
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        size := objectArray'Length;
        PreLogUtil_Package.put (To_Unbounded_String ("Image Total: ") & Java_Image (size), ImageWaitCompleteUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("waitForAll"));
        for index in 0 .. (size) - 1 loop
            ImageWaitCompleteUtil'Class (This).waitForATime (Image_Access (hashtable.get (objectArray (index))), Java_Unbox (objectArray (index)), This.allTimeDelayHelper);
        end loop;
   end waitForAll;

end org.allbinary.media.image.ImageWaitCompleteUtil_Package;


