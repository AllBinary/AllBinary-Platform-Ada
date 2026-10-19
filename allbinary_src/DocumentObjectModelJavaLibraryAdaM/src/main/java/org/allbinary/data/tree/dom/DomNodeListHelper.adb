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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;

package body org.allbinary.data.tree.dom.DomNodeListHelper_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out DomNodeListHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DomNodeListHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DomNodeListHelper_Access is
      This : constant DomNodeListHelper_Access := new DomNodeListHelper;
   begin
      DomNodeListHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getVector (nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := nodeList.getLength;
        for index in 0 .. (size) - 1 loop
            vector.add (DomNodeHelper_Package.getTextNodeValue (nodeList.item (index)));
        end loop;
        return vector;
   end getVector;

   procedure getVector (nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant BasicArrayList_Access := getVector (nodeList_Param => nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVector;

end org.allbinary.data.tree.dom.DomNodeListHelper_Package;


