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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;

package body org.allbinary.media.image.ImageCompleteUtil_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;
   procedure Initialize_Fields (This : in out ImageCompleteUtil'Class) is
   begin
      null;
      This.ISREADY_Field := To_Unbounded_String ("isReady");
      This.COMPLETE := To_Unbounded_String ("Image loading complete for: ");
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
        null;
   end waitForImage;

   --  throws Exception
   function isReady (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) return Boolean is
      image : constant Image_Access := Image_Access (image_Param);
      timeDelayHelper : constant TimeDelayHelper_Access := TimeDelayHelper_Access (timeDelayHelper_Param);
      playnImage : PlaynImage_Access;
      playnCoreImage : Image_Access;
      commonStrings : CommonStrings_Access;
   begin
        playnImage := PlaynImage_Access (image);
        playnCoreImage := Image_Access (playnImage.getImage);
        if (not (playnCoreImage.isReady)) or else (((playnCoreImage.width) + (playnCoreImage.height)) <= (0)) then
            ImageCompleteUtil'Class (This).handleTimeout (name);
            return False;
        end if;
        if not (image.isReady) then
            image.init (image.getImage);
            if not (image.isReady) then
                PreLogUtil_Package.put (To_Unbounded_String ("Waiting for Not Ready Image: ") & image.getName, ImageCompleteUtil_Access'(This'Unchecked_Access), This.ISREADY_Field);
            end if;
        end if;
        commonStrings := CommonStrings_Package.getInstance;
        PreLogUtil_Package.put (This.COMPLETE & image.getName, ImageCompleteUtil_Access'(This'Unchecked_Access), commonStrings.SUCCESS);
        return True;
   end isReady;

   --  throws Exception
   procedure handleTimeout (This : in out ImageCompleteUtil; name : Unbounded_String) is
   begin
        null;
   end handleTimeout;

   --  throws Exception
   procedure waitForAll (This : in out ImageCompleteUtil) is
   begin
        null;
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


