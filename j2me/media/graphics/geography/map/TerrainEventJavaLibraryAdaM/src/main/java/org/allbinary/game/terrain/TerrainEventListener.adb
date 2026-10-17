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
      Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out TerrainEventListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onTerrainEvent (This : in out TerrainEventListener; terrainEvent : TerrainEvent_Access) is
   begin
        This.list.clear;
        This.list.add (terrainEvent);
   end onTerrainEvent;

   function getList (This : in out TerrainEventListener) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

   procedure getList (This : in out TerrainEventListener) is
      Java_Result : constant BasicArrayList_Access := TerrainEventListener'Class (This).getList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getList;

end org.allbinary.game.terrain.TerrainEventListener_Package;


