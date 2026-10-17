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


package body org.allbinary.game.configuration.feature.GameFeatureCanvas_Package is

   procedure Initialize_Fields (This : in out GameFeatureCanvas'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureCanvas'Class) is
   begin
      Canvas_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameFeatureCanvas_Access is
      This : constant GameFeatureCanvas_Access := new GameFeatureCanvas;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure paint (This : in out GameFeatureCanvas; graphics : Graphics_Access) is
   begin
        null;
   end paint;

end org.allbinary.game.configuration.feature.GameFeatureCanvas_Package;


