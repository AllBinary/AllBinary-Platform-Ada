-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
package org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References is
   type RemoteInfo_Access is access all org.allbinary.game.multiplayer.layer.RemoteInfo_Package.RemoteInfo'Class;
   type RemoteInfo_Access_Array is array (Natural range <>) of RemoteInfo_Access;
   type RemoteInfo_Access_Array_Access is access all RemoteInfo_Access_Array;
   type RemoteInfo_Access_Array_Access_Array is array (Natural range <>) of RemoteInfo_Access_Array_Access;
   type RemoteInfo_Access_Array_Access_Array_Access is access all RemoteInfo_Access_Array_Access_Array;
   type RemoteInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteInfo_Access_Array_Access is (if Value /= null and then Value.all in RemoteInfo_Access_Array_Object'Class then RemoteInfo_Access_Array_Object'Class (Value.all).Value else null);
   type RemoteInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RemoteInfo_Access_Array_Access_Array_Object'Class then RemoteInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;

with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.multiplayer.layer.RemoteInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   function "=" (Left, Right : RemoteInfo_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   function Java_Box (Value : RemoteInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.Java_Box;
   function Java_Unbox_RemoteInfo_Access_Array (Value : access Java_Object'Class) return RemoteInfo_Access_Array_Access renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.Java_Unbox_RemoteInfo_Access_Array;
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   function Java_Box (Value : RemoteInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.Java_Box;
   function Java_Unbox_RemoteInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return RemoteInfo_Access_Array_Access_Array_Access renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.Java_Unbox_RemoteInfo_Access_Array_Access_Array;

   type RemoteInfo is new Java_Object with null record;
   NEW_PLAYER_ID : constant Integer := 0;
   REMOTE_INFO : RemoteInfo_Access;

   procedure Initialize (This : in out RemoteInfo'Class; username : Unbounded_String; actorSessionId : Integer; playerInputId : Integer; id : Integer);
   function Create (username : Unbounded_String; actorSessionId : Integer; playerInputId : Integer; id : Integer) return RemoteInfo_Access;

end org.allbinary.game.multiplayer.layer.RemoteInfo_Package;


