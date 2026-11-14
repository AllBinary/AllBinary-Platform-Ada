--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.android.ToastUtil_Package;
package org.allbinary.android.ToastUtil_Package_References is
   type ToastUtil_Access is access all org.allbinary.android.ToastUtil_Package.ToastUtil'Class;
   type ToastUtil_Access_Array is array (Natural range <>) of ToastUtil_Access;
   type ToastUtil_Access_Array_Access is access all ToastUtil_Access_Array;
   type ToastUtil_Access_Array_Access_Array is array (Natural range <>) of ToastUtil_Access_Array_Access;
   type ToastUtil_Access_Array_Access_Array_Access is access all ToastUtil_Access_Array_Access_Array;
   type ToastUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToastUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ToastUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToastUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToastUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToastUtil_Access_Array_Access is (if Value /= null and then Value.all in ToastUtil_Access_Array_Object'Class then ToastUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ToastUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToastUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ToastUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToastUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToastUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToastUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ToastUtil_Access_Array_Access_Array_Object'Class then ToastUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.ToastUtil_Package_References;

with org.allbinary.android.ToastUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.content.Context_Package;
with android.content.Context_Package_References;
limited with android.view.View_Package;
with android.view.View_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.android.ToastUtil_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package View_Package renames Standard.android.view.View_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Context_Access is android.content.Context_Package_References.Context_Access;
   use type Context_Access;
   subtype Context_Access_Array is android.content.Context_Package_References.Context_Access_Array;
   use type Context_Access_Array;
   subtype Context_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access;
   use type Context_Access_Array_Access;
   subtype Context_Access_Array_Access_Array is android.content.Context_Package_References.Context_Access_Array_Access_Array;
   use type Context_Access_Array_Access_Array;
   subtype Context_Access_Array_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access_Array_Access;
   use type Context_Access_Array_Access_Array_Access;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ToastUtil_Access is org.allbinary.android.ToastUtil_Package_References.ToastUtil_Access;
   function "=" (Left, Right : ToastUtil_Access) return Boolean renames org.allbinary.android.ToastUtil_Package_References."=";
   subtype ToastUtil_Access_Array is org.allbinary.android.ToastUtil_Package_References.ToastUtil_Access_Array;
   function "=" (Left, Right : ToastUtil_Access_Array) return Boolean renames org.allbinary.android.ToastUtil_Package_References."=";
   subtype ToastUtil_Access_Array_Access is org.allbinary.android.ToastUtil_Package_References.ToastUtil_Access_Array_Access;
   function "=" (Left, Right : ToastUtil_Access_Array_Access) return Boolean renames org.allbinary.android.ToastUtil_Package_References."=";
   function Java_Box (Value : ToastUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.ToastUtil_Package_References.Java_Box;
   function Java_Unbox_ToastUtil_Access_Array (Value : access Java_Object'Class) return ToastUtil_Access_Array_Access renames org.allbinary.android.ToastUtil_Package_References.Java_Unbox_ToastUtil_Access_Array;
   subtype ToastUtil_Access_Array_Access_Array is org.allbinary.android.ToastUtil_Package_References.ToastUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ToastUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.android.ToastUtil_Package_References."=";
   subtype ToastUtil_Access_Array_Access_Array_Access is org.allbinary.android.ToastUtil_Package_References.ToastUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ToastUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.ToastUtil_Package_References."=";
   function Java_Box (Value : ToastUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.ToastUtil_Package_References.Java_Box;
   function Java_Unbox_ToastUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ToastUtil_Access_Array_Access_Array_Access renames org.allbinary.android.ToastUtil_Package_References.Java_Unbox_ToastUtil_Access_Array_Access_Array;

   type ToastUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ToastUtil_Access;

   procedure Initialize (This : in out ToastUtil'Class);
   function Create return ToastUtil_Access;
   function getInstance return ToastUtil_Access;
   procedure makeToast (This : in out ToastUtil; view_Param : access View_Package.View'Class; context_Param : access Context_Package.Context'Class; message : Unbounded_String; time : Integer);

end org.allbinary.android.ToastUtil_Package;


