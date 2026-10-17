--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package is


   type MultiPlayerGameFeatureFactory is tagged;
   type MultiPlayerGameFeatureFactory_Access is access all MultiPlayerGameFeatureFactory'Class;
   type MultiPlayerGameFeatureFactory_Access_Array is array (Natural range <>) of MultiPlayerGameFeatureFactory_Access;
   type MultiPlayerGameFeatureFactory_Access_Array_Access is access all MultiPlayerGameFeatureFactory_Access_Array;

   type MultiPlayerGameFeatureFactory is new Java_Object with null record;
   instance : MultiPlayerGameFeatureFactory_Access;

   procedure Initialize (This : in out MultiPlayerGameFeatureFactory'Class);
   function Create return MultiPlayerGameFeatureFactory_Access;
   function getInstance return MultiPlayerGameFeatureFactory_Access;
   procedure getInstance;
   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; anyType : Java_Object_Access);

end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;


