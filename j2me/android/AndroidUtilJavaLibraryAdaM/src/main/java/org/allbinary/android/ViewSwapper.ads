--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.view.View_Package; use android.view.View_Package;
with android.view.ViewGroup_Package; use android.view.ViewGroup_Package;

package org.allbinary.android.ViewSwapper_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package View_Package renames Standard.android.view.View_Package;
   package ViewGroup_Package renames Standard.android.view.ViewGroup_Package;

   type ViewSwapper is tagged;
   type ViewSwapper_Access is access all ViewSwapper'Class;
   type ViewSwapper_Access_Array is array (Natural range <>) of ViewSwapper_Access;
   type ViewSwapper_Access_Array_Access is access all ViewSwapper_Access_Array;

   type ViewSwapper is new Java_Object with record
      rootViewId : Integer;
      activity : Activity_Access;
      currentMainViewId : Integer;
      mainViewArray : View_Access_Array_Access;
      topViewArray : View_Access_Array_Access;
   end record;
   NULL_VIEW_ARRAY : View_Access_Array_Access;

   procedure Initialize (This : in out ViewSwapper'Class; activity : Activity_Access; rootViewId : Integer);
   function Create (activity : Activity_Access; rootViewId : Integer) return ViewSwapper_Access;
   procedure setMainViews (This : in out ViewSwapper; viewArray : View_Access_Array_Access);
   procedure setTopViewArray (This : in out ViewSwapper; topViewArray : View_Access_Array_Access);
   procedure setMainView (This : in out ViewSwapper; id : Integer);

end org.allbinary.android.ViewSwapper_Package;


