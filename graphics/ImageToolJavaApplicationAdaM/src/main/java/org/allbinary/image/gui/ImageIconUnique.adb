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


package body org.allbinary.image.gui.ImageIconUnique_Package is

   procedure Initialize_Fields (This : in out ImageIconUnique'Class) is
   begin
      null;
      This.id := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageIconUnique'Class; bufferedImage_Param : access BufferedImage'Class; index : Integer) is
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        ImageIcon_Package.Initialize (This, bufferedImage);
        Initialize_Fields (This);
        This.setId (index);
   end Initialize;

   function Create (bufferedImage_Param : access BufferedImage'Class; index : Integer) return ImageIconUnique_Access is
      This : constant ImageIconUnique_Access := new ImageIconUnique;
   begin
      ImageIconUnique_Package.Initialize (This.all, bufferedImage_Param, index);
      return This;
   end Create;

   function getId (This : in out ImageIconUnique) return Integer is
   begin
        return This.id;
   end getId;

   procedure setId (This : in out ImageIconUnique; id : Integer) is
   begin
        This.id := id;
   end setId;

end org.allbinary.image.gui.ImageIconUnique_Package;


