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


with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;
with org.allbinary.media.image.Hashtable_Package; use org.allbinary.media.image.Hashtable_Package;

package body org.allbinary.media.image.ImageCompleteUtil_Package is

   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;
   procedure Initialize_Fields (This : in out ImageCompleteUtil'Class) is
   begin
      null;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (18000);
      This.allTimeDelayHelper := TimeDelayHelper_Package.Create (120000);
   end Initialize_Fields;

   procedure Initialize (This : in out ImageCompleteUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageCompleteUtil_Access is
      This : constant ImageCompleteUtil_Access := new ImageCompleteUtil;
   begin
      ImageCompleteUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageCompleteUtil_Access is
   begin
        return ImageCompleteUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure waitForImage (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        This.timeDelayHelper.setStartTime;
        ImageCompleteUtil'Class (This).waitForATime (image, name, This.timeDelayHelper);
   end waitForImage;

   --  throws Exception
   function isReady (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) return Boolean is
      image : constant Image_Access := Image_Access (image_Param);
      timeDelayHelper : constant TimeDelayHelper_Access := TimeDelayHelper_Access (timeDelayHelper_Param);
      playnImage : PlaynImage_Access;
   begin
        playnImage := PlaynImage_Access (image);
        if (not (playnImage.getImage.isReady)) and then (((playnImage.getImage.width) + (playnImage.getImage.height)) = (0)) then
            if timeDelayHelper.isTime then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ") & name));
            end if;
            return False;
        end if;
        return True;
   end isReady;

   --  throws Exception
   procedure waitForATime (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      timeDelayHelper : constant TimeDelayHelper_Access := TimeDelayHelper_Access (timeDelayHelper_Param);
      playnImage : PlaynImage_Access;
   begin
        playnImage := PlaynImage_Access (image);
        while (not (playnImage.getImage.isReady)) and then (((playnImage.getImage.width) + (playnImage.getImage.height)) = (0)) loop
            if timeDelayHelper.isTime then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ") & name));
            end if;
        end loop;
   end waitForATime;

   --  throws Exception
   procedure waitForAll (This : in out ImageCompleteUtil) is
      hashtable : Hashtable_Access;
      objectArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        This.allTimeDelayHelper.setStartTime;
        hashtable := GameFeatureImageCacheFactory_Package.getInstance.getHashtable;
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        size := objectArray'Length;
        PreLogUtil_Package.put (To_Unbounded_String ("Total: ") & Java_Image (size), ImageCompleteUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("waitForAll"));
        for index in 0 .. (size) - 1 loop
            ImageCompleteUtil'Class (This).waitForATime (Image_Access (hashtable.get (objectArray (index))), Java_Unbox (objectArray (index)), This.allTimeDelayHelper);
        end loop;
   end waitForAll;

   procedure isReady (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) is
      Java_Result : constant Boolean := ImageCompleteUtil'Class (This).isReady (image_Param => image_Param, name => name, timeDelayHelper_Param => timeDelayHelper_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isReady;

begin
   null;
   instance := ImageCompleteUtil_Package.Create;

end org.allbinary.media.image.ImageCompleteUtil_Package;


