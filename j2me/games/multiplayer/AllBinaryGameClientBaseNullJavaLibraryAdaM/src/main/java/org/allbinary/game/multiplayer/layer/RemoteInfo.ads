-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.game.multiplayer.layer.RemoteInfo_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type RemoteInfo is tagged;
   type RemoteInfo_Access is access all RemoteInfo'Class;
   type RemoteInfo_Access_Array is array (Natural range <>) of RemoteInfo_Access;
   type RemoteInfo_Access_Array_Access is access all RemoteInfo_Access_Array;

   type RemoteInfo is new Java_Object with null record;
   NEW_PLAYER_ID : Integer;
   REMOTE_INFO : RemoteInfo_Access;

   procedure Initialize (This : in out RemoteInfo'Class; username : Unbounded_String; actorSessionId : Integer; playerInputId : Integer; id : Integer);
   function Create (username : Unbounded_String; actorSessionId : Integer; playerInputId : Integer; id : Integer) return RemoteInfo_Access;

end org.allbinary.game.multiplayer.layer.RemoteInfo_Package;


