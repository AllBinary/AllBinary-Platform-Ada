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


package body org.allbinary.data.tree.dom.DomNodeListHelper_Package is

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


   function getVector (nodeList : NodeList_Access) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        vector := BasicArrayListD_Package.Create;
        size := nodeList.getLength;
        for index in 0 .. (size) - 1 loop
            vector.add (DomNodeHelper_Package.getTextNodeValue (nodeList.item (index)));
        end loop;
        return vector;
   end getVector;

   procedure getVector (nodeList : NodeList_Access) is
      Java_Result : constant BasicArrayList_Access := getVector (nodeList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVector;

end org.allbinary.data.tree.dom.DomNodeListHelper_Package;


