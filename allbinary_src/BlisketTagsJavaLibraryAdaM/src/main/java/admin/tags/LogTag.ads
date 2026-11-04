--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

limited with admin.tags.LogTag_Package;
package admin.tags.LogTag_Package_References is
   type LogTag_Access is access all admin.tags.LogTag_Package.LogTag'Class;
   type LogTag_Access_Array is array (Natural range <>) of LogTag_Access;
   type LogTag_Access_Array_Access is access all LogTag_Access_Array;
   type LogTag_Access_Array_Access_Array is array (Natural range <>) of LogTag_Access_Array_Access;
   type LogTag_Access_Array_Access_Array_Access is access all LogTag_Access_Array_Access_Array;
end admin.tags.LogTag_Package_References;

with admin.tags.LogTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.LogTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LogTag_Access is admin.tags.LogTag_Package_References.LogTag_Access;
   function "=" (Left, Right : LogTag_Access) return Boolean renames admin.tags.LogTag_Package_References."=";
   subtype LogTag_Access_Array is admin.tags.LogTag_Package_References.LogTag_Access_Array;
   function "=" (Left, Right : LogTag_Access_Array) return Boolean renames admin.tags.LogTag_Package_References."=";
   subtype LogTag_Access_Array_Access is admin.tags.LogTag_Package_References.LogTag_Access_Array_Access;
   function "=" (Left, Right : LogTag_Access_Array_Access) return Boolean renames admin.tags.LogTag_Package_References."=";
   subtype LogTag_Access_Array_Access_Array is admin.tags.LogTag_Package_References.LogTag_Access_Array_Access_Array;
   function "=" (Left, Right : LogTag_Access_Array_Access_Array) return Boolean renames admin.tags.LogTag_Package_References."=";
   subtype LogTag_Access_Array_Access_Array_Access is admin.tags.LogTag_Package_References.LogTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.LogTag_Package_References."=";

   type LogTag is new TableTag with null record;

   procedure Initialize (This : in out LogTag'Class);
   function Create return LogTag_Access;

end admin.tags.LogTag_Package;


