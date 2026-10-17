--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.game.midlet.DemoGameMidletEventListener_Package; use org.allbinary.game.midlet.DemoGameMidletEventListener_Package;
with org.allbinary.midlet.MidletCompositeInterface_Package; use org.allbinary.midlet.MidletCompositeInterface_Package;
with org.allbinary.view.EmulatorViewInterface_Package; use org.allbinary.view.EmulatorViewInterface_Package;

package org.allbinary.view.AllBinaryMidletViewInterface_Package is

   package GameInitializedListenerInterface_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
   package DemoGameMidletEventListener_Package renames Standard.org.allbinary.game.midlet.DemoGameMidletEventListener_Package;
   package MidletCompositeInterface_Package renames Standard.org.allbinary.midlet.MidletCompositeInterface_Package;

   type AllBinaryMidletViewInterface is interface and MidletCompositeInterface and EmulatorViewInterface and DemoGameMidletEventListener and GameInitializedListenerInterface;
   type AllBinaryMidletViewInterface_Access is access all AllBinaryMidletViewInterface'Class;
   type AllBinaryMidletViewInterface_Access_Array is array (Natural range <>) of AllBinaryMidletViewInterface_Access;
   type AllBinaryMidletViewInterface_Access_Array_Access is access all AllBinaryMidletViewInterface_Access_Array;
   procedure onResume (This : in out AllBinaryMidletViewInterface) is abstract;
   procedure onPause (This : in out AllBinaryMidletViewInterface) is abstract;
   procedure onDestroy (This : in out AllBinaryMidletViewInterface) is abstract;

end org.allbinary.view.AllBinaryMidletViewInterface_Package;


