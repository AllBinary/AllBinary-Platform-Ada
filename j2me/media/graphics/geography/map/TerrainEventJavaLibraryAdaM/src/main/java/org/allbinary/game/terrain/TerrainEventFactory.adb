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


package body org.allbinary.game.terrain.TerrainEventFactory_Package is

   procedure Initialize_Fields (This : in out TerrainEventFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TerrainEventFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TerrainEventFactory_Access is
      This : constant TerrainEventFactory_Access := new TerrainEventFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out TerrainEventFactory) return AllBinaryEventObject_Access is
   begin
        return TerrainEvent_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT);
   end getInstance;

   procedure getInstance (This : in out TerrainEventFactory) is
      Java_Result : constant AllBinaryEventObject_Access := TerrainEventFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.terrain.TerrainEventFactory_Package;


