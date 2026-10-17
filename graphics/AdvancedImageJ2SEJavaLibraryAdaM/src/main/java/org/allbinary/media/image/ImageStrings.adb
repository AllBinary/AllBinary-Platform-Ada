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


package body org.allbinary.media.image.ImageStrings_Package is

   procedure Initialize_Fields (This : in out ImageStrings'Class) is
   begin
      null;
      This.PNG := To_Unbounded_String ("PNG");
      This.PNG_EXTENSION := To_Unbounded_String (".png");
   end Initialize_Fields;

   procedure Initialize (This : in out ImageStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageStrings_Access is
      This : constant ImageStrings_Access := new ImageStrings;
   begin
      ImageStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageStrings_Access is
   begin
        return ImageStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := ImageStrings_Package.Create;

end org.allbinary.media.image.ImageStrings_Package;


