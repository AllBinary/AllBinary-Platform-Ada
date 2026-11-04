--  Generated Code Do Not Modify

limited with org.allbinary.android.ViewSwapper_Package;
package org.allbinary.android.ViewSwapper_Package_References is
   type ViewSwapper_Access is access all org.allbinary.android.ViewSwapper_Package.ViewSwapper'Class;
   type ViewSwapper_Access_Array is array (Natural range <>) of ViewSwapper_Access;
   type ViewSwapper_Access_Array_Access is access all ViewSwapper_Access_Array;
   type ViewSwapper_Access_Array_Access_Array is array (Natural range <>) of ViewSwapper_Access_Array_Access;
   type ViewSwapper_Access_Array_Access_Array_Access is access all ViewSwapper_Access_Array_Access_Array;
end org.allbinary.android.ViewSwapper_Package_References;

with org.allbinary.android.ViewSwapper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
limited with android.view.View_Package;
with android.view.View_Package_References;

package org.allbinary.android.ViewSwapper_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package View_Package renames Standard.android.view.View_Package;
   package Reference_Types is
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   subtype View_Access is android.view.View_Package_References.View_Access;
   use type View_Access;
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   use type View_Access_Array;
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   use type View_Access_Array_Access;
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   use type View_Access_Array_Access_Array;
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   use type View_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ViewSwapper_Access is org.allbinary.android.ViewSwapper_Package_References.ViewSwapper_Access;
   function "=" (Left, Right : ViewSwapper_Access) return Boolean renames org.allbinary.android.ViewSwapper_Package_References."=";
   subtype ViewSwapper_Access_Array is org.allbinary.android.ViewSwapper_Package_References.ViewSwapper_Access_Array;
   function "=" (Left, Right : ViewSwapper_Access_Array) return Boolean renames org.allbinary.android.ViewSwapper_Package_References."=";
   subtype ViewSwapper_Access_Array_Access is org.allbinary.android.ViewSwapper_Package_References.ViewSwapper_Access_Array_Access;
   function "=" (Left, Right : ViewSwapper_Access_Array_Access) return Boolean renames org.allbinary.android.ViewSwapper_Package_References."=";
   subtype ViewSwapper_Access_Array_Access_Array is org.allbinary.android.ViewSwapper_Package_References.ViewSwapper_Access_Array_Access_Array;
   function "=" (Left, Right : ViewSwapper_Access_Array_Access_Array) return Boolean renames org.allbinary.android.ViewSwapper_Package_References."=";
   subtype ViewSwapper_Access_Array_Access_Array_Access is org.allbinary.android.ViewSwapper_Package_References.ViewSwapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewSwapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.ViewSwapper_Package_References."=";

   type ViewSwapper is new Java_Object with record
      rootViewId : Integer;
      activity : Activity_Access;
      currentMainViewId : Integer;
      mainViewArray : View_Access_Array_Access;
      topViewArray : View_Access_Array_Access;
   end record;
   NULL_VIEW_ARRAY : View_Access_Array_Access;

   procedure Initialize (This : in out ViewSwapper'Class; activity_Param : access Activity_Package.Activity'Class; rootViewId : Integer);
   function Create (activity_Param : access Activity_Package.Activity'Class; rootViewId : Integer) return ViewSwapper_Access;
   procedure setMainViews (This : in out ViewSwapper; viewArray : View_Access_Array_Access);
   procedure setTopViewArray (This : in out ViewSwapper; topViewArray : View_Access_Array_Access);
   procedure setMainView (This : in out ViewSwapper; id : Integer);

end org.allbinary.android.ViewSwapper_Package;


