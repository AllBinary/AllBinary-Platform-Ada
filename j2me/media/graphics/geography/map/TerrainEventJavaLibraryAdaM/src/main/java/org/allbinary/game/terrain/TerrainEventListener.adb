--  Generated Code Do Not Modify


with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEvent_Package_References;
with org.allbinary.math.Angle_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.terrain.TerrainEvent_Package;

package body org.allbinary.game.terrain.TerrainEventListener_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype TerrainEvent_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access;
   function "=" (Left, Right : TerrainEvent_Access) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array;
   function "=" (Left, Right : TerrainEvent_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access;
   function "=" (Left, Right : TerrainEvent_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   procedure Initialize_Fields (This : in out TerrainEventListener'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
        This.list.add (Java_Object_Access (terrainEvent));
   end onTerrainEvent;

   function getList (This : in out TerrainEventListener) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

end org.allbinary.game.terrain.TerrainEventListener_Package;


