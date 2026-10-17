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


package body org.allbinary.animation.AnimationEventHandler_Package is

   procedure Initialize_Fields (This : in out AnimationEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AnimationEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AnimationEventHandler_Access is
      This : constant AnimationEventHandler_Access := new AnimationEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return AnimationEventHandler_Access is
   begin
        return AnimationEventHandler_Package.eventHandler;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AnimationEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   eventHandler := AnimationEventHandler_Package.Create;

end org.allbinary.animation.AnimationEventHandler_Package;


