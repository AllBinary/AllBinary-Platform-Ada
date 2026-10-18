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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.AcceptableResponseFactory_Package; use org.allbinary.logic.communication.http.AcceptableResponseFactory_Package;

package body org.allbinary.logic.communication.http.AcceptableResponseUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out AcceptableResponseUtil'Class) is
   begin
      null;
      This.candidateVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.tagNameVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out AcceptableResponseUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AcceptableResponseUtil_Access is
      This : constant AcceptableResponseUtil_Access := new AcceptableResponseUtil;
   begin
      AcceptableResponseUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AcceptableResponseUtil_Access is
   begin
        return AcceptableResponseUtil_Package.instance;
   end getInstance;

   --  Java static initializer: call this once
   procedure Initializer is
   begin
        TsUtil_Package.getInstance.hashCode (AcceptableResponseFactory_Package.getInstance.HTML);
   end Initializer;

   function get (This : in out AcceptableResponseUtil; index : Integer) return Unbounded_String is
   begin
        return Java_Unbox (This.candidateVector.get (index));
   end get;

   function getTagName (This : in out AcceptableResponseUtil; index : Integer) return Unbounded_String is
   begin
        return Java_Unbox (This.tagNameVector.get (index));
   end getTagName;

   function size (This : in out AcceptableResponseUtil) return Integer is
   begin
        return This.candidateVector.size;
   end size;

   procedure get (This : in out AcceptableResponseUtil; index : Integer) is
      Java_Result : constant Unbounded_String := AcceptableResponseUtil'Class (This).get (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getTagName (This : in out AcceptableResponseUtil; index : Integer) is
      Java_Result : constant Unbounded_String := AcceptableResponseUtil'Class (This).getTagName (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTagName;

begin
   null;
   instance := AcceptableResponseUtil_Package.Create;

end org.allbinary.logic.communication.http.AcceptableResponseUtil_Package;


