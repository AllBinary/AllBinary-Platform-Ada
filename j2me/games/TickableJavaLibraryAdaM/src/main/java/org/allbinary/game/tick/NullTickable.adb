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


package body org.allbinary.game.tick.NullTickable_Package is

   procedure Initialize_Fields (This : in out NullTickable'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("NulLTickable");
   end Initialize_Fields;

   procedure Initialize (This : in out NullTickable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullTickable_Access is
      This : constant NullTickable_Access := new NullTickable;
   begin
      NullTickable_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NullTickable_Access is
   begin
        return NullTickable_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   procedure processTick (This : in out NullTickable; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processTick;

   function getName (This : in out NullTickable) return Unbounded_String is
   begin
        return This.NAME;
   end getName;

begin
   null;
   SINGLETON := NullTickable_Package.Create;

end org.allbinary.game.tick.NullTickable_Package;


