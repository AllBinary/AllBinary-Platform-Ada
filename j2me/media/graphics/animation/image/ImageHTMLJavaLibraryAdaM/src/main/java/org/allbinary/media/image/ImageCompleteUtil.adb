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


package body org.allbinary.media.image.ImageCompleteUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageCompleteUtil_Access is
   begin
        return ImageCompleteUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure waitForImage (This : in out ImageCompleteUtil; image : Image_Access; name : Unbounded_String) is
   begin
        This.timeDelayHelper.setStartTime;
        This.waitForATime (image, name, This.timeDelayHelper);
   end waitForImage;

   --  throws Exception
   function isReady (This : in out ImageCompleteUtil; image : Image_Access; name : Unbounded_String; timeDelayHelper : TimeDelayHelper_Access) return Boolean is
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
   procedure waitForATime (This : in out ImageCompleteUtil; image : Image_Access; name : Unbounded_String; timeDelayHelper : TimeDelayHelper_Access) is
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
        PreLogUtil_Package.put (To_Unbounded_String ("Total: ") & Java_Image (size), This'Unchecked_Access, To_Unbounded_String ("waitForAll"));
        for index in 0 .. (size) - 1 loop
            This.waitForATime (Image_Access (hashtable.get (objectArray (index))), Unbounded_String (objectArray (index)), This.allTimeDelayHelper);
        end loop;
   end waitForAll;

   procedure getInstance is
      Java_Result : constant ImageCompleteUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isReady (This : in out ImageCompleteUtil; image : Image_Access; name : Unbounded_String; timeDelayHelper : TimeDelayHelper_Access) is
      Java_Result : constant Boolean := ImageCompleteUtil'Class (This).isReady (image, name, timeDelayHelper);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isReady;

begin
   null;
   instance := ImageCompleteUtil_Package.Create;

end org.allbinary.media.image.ImageCompleteUtil_Package;


