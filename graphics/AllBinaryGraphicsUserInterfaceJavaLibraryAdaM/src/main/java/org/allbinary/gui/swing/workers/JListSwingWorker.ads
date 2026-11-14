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

with AllBinary_Java;
limited with org.allbinary.gui.swing.workers.JListSwingWorker_Package;
package org.allbinary.gui.swing.workers.JListSwingWorker_Package_References is
   type JListSwingWorker_Access is access all org.allbinary.gui.swing.workers.JListSwingWorker_Package.JListSwingWorker'Class;
   type JListSwingWorker_Access_Array is array (Natural range <>) of JListSwingWorker_Access;
   type JListSwingWorker_Access_Array_Access is access all JListSwingWorker_Access_Array;
   type JListSwingWorker_Access_Array_Access_Array is array (Natural range <>) of JListSwingWorker_Access_Array_Access;
   type JListSwingWorker_Access_Array_Access_Array_Access is access all JListSwingWorker_Access_Array_Access_Array;
   type JListSwingWorker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JListSwingWorker_Access_Array_Access;
   end record;
   function Java_Box (Value : JListSwingWorker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JListSwingWorker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JListSwingWorker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JListSwingWorker_Access_Array_Access is (if Value /= null and then Value.all in JListSwingWorker_Access_Array_Object'Class then JListSwingWorker_Access_Array_Object'Class (Value.all).Value else null);
   type JListSwingWorker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JListSwingWorker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JListSwingWorker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JListSwingWorker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JListSwingWorker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JListSwingWorker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JListSwingWorker_Access_Array_Access_Array_Object'Class then JListSwingWorker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.gui.swing.workers.JListSwingWorker_Package_References;

with org.allbinary.gui.swing.workers.JListSwingWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.gui.swing.workers.SwingWorker_Package; use org.allbinary.gui.swing.workers.SwingWorker_Package;
limited with org.allbinary.gui.swing.workers.JList_Package;
with org.allbinary.gui.swing.workers.JList_Package_References;
limited with org.allbinary.gui.swing.workers.ListModel_Package;
with org.allbinary.gui.swing.workers.ListModel_Package_References;

package org.allbinary.gui.swing.workers.JListSwingWorker_Package is

   package Reference_Types is
   subtype JList_Access is org.allbinary.gui.swing.workers.JList_Package_References.JList_Access;
   use type JList_Access;
   subtype JList_Access_Array is org.allbinary.gui.swing.workers.JList_Package_References.JList_Access_Array;
   use type JList_Access_Array;
   subtype JList_Access_Array_Access is org.allbinary.gui.swing.workers.JList_Package_References.JList_Access_Array_Access;
   use type JList_Access_Array_Access;
   subtype JList_Access_Array_Access_Array is org.allbinary.gui.swing.workers.JList_Package_References.JList_Access_Array_Access_Array;
   use type JList_Access_Array_Access_Array;
   subtype JList_Access_Array_Access_Array_Access is org.allbinary.gui.swing.workers.JList_Package_References.JList_Access_Array_Access_Array_Access;
   use type JList_Access_Array_Access_Array_Access;
   subtype ListModel_Access is org.allbinary.gui.swing.workers.ListModel_Package_References.ListModel_Access;
   use type ListModel_Access;
   subtype ListModel_Access_Array is org.allbinary.gui.swing.workers.ListModel_Package_References.ListModel_Access_Array;
   use type ListModel_Access_Array;
   subtype ListModel_Access_Array_Access is org.allbinary.gui.swing.workers.ListModel_Package_References.ListModel_Access_Array_Access;
   use type ListModel_Access_Array_Access;
   subtype ListModel_Access_Array_Access_Array is org.allbinary.gui.swing.workers.ListModel_Package_References.ListModel_Access_Array_Access_Array;
   use type ListModel_Access_Array_Access_Array;
   subtype ListModel_Access_Array_Access_Array_Access is org.allbinary.gui.swing.workers.ListModel_Package_References.ListModel_Access_Array_Access_Array_Access;
   use type ListModel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype JListSwingWorker_Access is org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.JListSwingWorker_Access;
   function "=" (Left, Right : JListSwingWorker_Access) return Boolean renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References."=";
   subtype JListSwingWorker_Access_Array is org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.JListSwingWorker_Access_Array;
   function "=" (Left, Right : JListSwingWorker_Access_Array) return Boolean renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References."=";
   subtype JListSwingWorker_Access_Array_Access is org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.JListSwingWorker_Access_Array_Access;
   function "=" (Left, Right : JListSwingWorker_Access_Array_Access) return Boolean renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References."=";
   function Java_Box (Value : JListSwingWorker_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.Java_Box;
   function Java_Unbox_JListSwingWorker_Access_Array (Value : access Java_Object'Class) return JListSwingWorker_Access_Array_Access renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.Java_Unbox_JListSwingWorker_Access_Array;
   subtype JListSwingWorker_Access_Array_Access_Array is org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.JListSwingWorker_Access_Array_Access_Array;
   function "=" (Left, Right : JListSwingWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References."=";
   subtype JListSwingWorker_Access_Array_Access_Array_Access is org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.JListSwingWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JListSwingWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References."=";
   function Java_Box (Value : JListSwingWorker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.Java_Box;
   function Java_Unbox_JListSwingWorker_Access_Array_Access_Array (Value : access Java_Object'Class) return JListSwingWorker_Access_Array_Access_Array_Access renames org.allbinary.gui.swing.workers.JListSwingWorker_Package_References.Java_Unbox_JListSwingWorker_Access_Array_Access_Array;

   type JListSwingWorker is new SwingWorker with record
      jList : JList_Access;
      listModel : ListModel_Access;
   end record;

   procedure Initialize (This : in out JListSwingWorker'Class; jList_Param : access JList_Package.JList'Class; listModel_Param : access ListModel_Package.ListModel'Class);
   function Create (jList_Param : access JList_Package.JList'Class; listModel_Param : access ListModel_Package.ListModel'Class) return JListSwingWorker_Access;
   function doInBackground (This : in out JListSwingWorker) return Java_Object_Access;
   procedure done (This : in out JListSwingWorker);
   function getJList (This : in out JListSwingWorker) return JList_Access;
   procedure setJList (This : in out JListSwingWorker; jList_Param : access JList_Package.JList'Class);
   function getListModel (This : in out JListSwingWorker) return ListModel_Access;
   procedure setListModel (This : in out JListSwingWorker; listModel_Param : access ListModel_Package.ListModel'Class);

end org.allbinary.gui.swing.workers.JListSwingWorker_Package;


