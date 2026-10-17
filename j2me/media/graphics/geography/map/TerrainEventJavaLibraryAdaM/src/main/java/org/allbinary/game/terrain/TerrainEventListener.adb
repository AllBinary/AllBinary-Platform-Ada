--  Generated Code Do Not Modify


package body org.allbinary.game.terrain.TerrainEventListener_Package is

   procedure Initialize_Fields (This : in out TerrainEventListener'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out TerrainEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TerrainEventListener_Access is
      This : constant TerrainEventListener_Access := new TerrainEventListener;
   begin
      TerrainEventListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out TerrainEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, TerrainEventListener_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onTerrainEvent (This : in out TerrainEventListener; terrainEvent_Param : access TerrainEvent_Package.TerrainEvent'Class) is
      terrainEvent : constant TerrainEvent_Access := TerrainEvent_Access (terrainEvent_Param);
   begin
        This.list.clear;
        This.list.add (terrainEvent);
   end onTerrainEvent;

   function getList (This : in out TerrainEventListener) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

end org.allbinary.game.terrain.TerrainEventListener_Package;


