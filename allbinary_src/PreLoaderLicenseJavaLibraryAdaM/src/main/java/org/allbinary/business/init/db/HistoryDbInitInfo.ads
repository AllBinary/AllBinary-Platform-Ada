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

limited with org.allbinary.business.init.db.HistoryDbInitInfo_Package;
package org.allbinary.business.init.db.HistoryDbInitInfo_Package_References is
   type HistoryDbInitInfo_Access is access all org.allbinary.business.init.db.HistoryDbInitInfo_Package.HistoryDbInitInfo'Class;
   type HistoryDbInitInfo_Access_Array is array (Natural range <>) of HistoryDbInitInfo_Access;
   type HistoryDbInitInfo_Access_Array_Access is access all HistoryDbInitInfo_Access_Array;
   type HistoryDbInitInfo_Access_Array_Access_Array is array (Natural range <>) of HistoryDbInitInfo_Access_Array_Access;
   type HistoryDbInitInfo_Access_Array_Access_Array_Access is access all HistoryDbInitInfo_Access_Array_Access_Array;
end org.allbinary.business.init.db.HistoryDbInitInfo_Package_References;

with org.allbinary.business.init.db.HistoryDbInitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.db.DbInitInfo_Package; use org.allbinary.business.init.db.DbInitInfo_Package;

package org.allbinary.business.init.db.HistoryDbInitInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HistoryDbInitInfo_Access is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access;
   function "=" (Left, Right : HistoryDbInitInfo_Access) return Boolean renames org.allbinary.business.init.db.HistoryDbInitInfo_Package_References."=";
   subtype HistoryDbInitInfo_Access_Array is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array;
   function "=" (Left, Right : HistoryDbInitInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.HistoryDbInitInfo_Package_References."=";
   subtype HistoryDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array_Access;
   function "=" (Left, Right : HistoryDbInitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.HistoryDbInitInfo_Package_References."=";
   subtype HistoryDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : HistoryDbInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.HistoryDbInitInfo_Package_References."=";
   subtype HistoryDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HistoryDbInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.HistoryDbInitInfo_Package_References."=";

   type HistoryDbInitInfo is new DbInitInfo with null record;
   INITFILE : Unbounded_String;

   procedure Initialize (This : in out HistoryDbInitInfo'Class);
   function Create return HistoryDbInitInfo_Access;
   procedure Initialize (This : in out HistoryDbInitInfo'Class; read : Boolean);
   function Create (read : Boolean) return HistoryDbInitInfo_Access;

end org.allbinary.business.init.db.HistoryDbInitInfo_Package;


