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


package body org.allbinary.input.media.image.InputImageType_Package is

   procedure Initialize_Fields (This : in out InputImageType'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputImageType'Class; name : Unbounded_String; index : Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.index := index;
        InputImageType_Package.TYPE_VECTOR.add (This'Unchecked_Access);
        InputImageType_Package.hashMap.put (This.getName, This'Unchecked_Access);
   end Initialize;

   function Create (name : Unbounded_String; index : Integer) return InputImageType_Access is
      This : constant InputImageType_Access := new InputImageType;
   begin
      Initialize (This.all, name, index);
      return This;
   end Create;

   function toString (This : in out InputImageType) return Unbounded_String is
   begin
        return To_Unbounded_String ("ImageType: ") & This.getName;
   end toString;

   function getName (This : in out InputImageType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getInstance (imageTypeString : Unbounded_String) return InputImageType_Access is
   begin
        return InputImageType_Access (InputImageType_Package.hashMap.get (imageTypeString));
   end getInstance;

   function getAllAsVector return BasicArrayList_Access is
   begin
        return InputImageType_Package.TYPE_VECTOR;
   end getAllAsVector;

   function getIndex (This : in out InputImageType) return Integer is
   begin
        return This.index;
   end getIndex;

   procedure toString (This : in out InputImageType) is
      Java_Result : constant Unbounded_String := InputImageType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getName (This : in out InputImageType) is
      Java_Result : constant Unbounded_String := InputImageType'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getInstance (imageTypeString : Unbounded_String) is
      Java_Result : constant InputImageType_Access := getInstance (imageTypeString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getAllAsVector is
      Java_Result : constant BasicArrayList_Access := getAllAsVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllAsVector;

   procedure getIndex (This : in out InputImageType) is
      Java_Result : constant Integer := InputImageType'Class (This).getIndex;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

begin
   null;
   hashMap := StdUtil_Package.getInstance.createHashMap;
   TYPE_VECTOR := BasicArrayListD_Package.Create;
   CAPTURE := InputImageType_Package.Create (To_Unbounded_String ("Capture"), 0);
   COMPARISON := InputImageType_Package.Create (To_Unbounded_String ("Comparison"), 1);
   MOTION := InputImageType_Package.Create (To_Unbounded_String ("Motion"), 2);

end org.allbinary.input.media.image.InputImageType_Package;


