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


package body org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package is

   procedure Initialize_Fields (This : in out NativeLibraryHelperWrapper'Class) is
   begin
      null;
      This.libraryName := Null_Unbounded_String;
      This.loader := null;
      This.anyType := null;
   end Initialize_Fields;


   procedure Initialize (This : in out NativeLibraryHelperWrapper'Class; libraryName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setLibraryName (libraryName);
   end Initialize;

   function Create (libraryName : Unbounded_String) return NativeLibraryHelperWrapper_Access is
      This : constant NativeLibraryHelperWrapper_Access := new NativeLibraryHelperWrapper;
   begin
      NativeLibraryHelperWrapper_Package.Initialize (This.all, libraryName);
      return This;
   end Create;

   --  throws Exception
   procedure load (This : in out NativeLibraryHelperWrapper) is
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      myClass : Ada.Tags.Tag;
      constructor : Constructor_Access;
      commonStrings : CommonStrings_Access;
      method : Method_Access;
   begin
        params := new Java_Object_Access_Array'(0 .. (1) - 1 => null);
        params (0) := This.getLibraryName;
        classes := new Ada_Tags_Tag_Array'(0 .. (1) - 1 => null);
        classes (0) := This.getLibraryName.all'Tag;
        This.loader := NativeLibraryClassLoader_Package.Create (This.all'Tag.getClassLoader);
        myClass := This.loader.loadClass (To_Unbounded_String ("dynamic.NativeLibraryHelper"));
        constructor := myClass.getConstructor (classes);
        This.anyType := constructor.newInstance (params);
        commonStrings := CommonStrings_Package.getInstance;
        method := This.anyType.all'Tag.getMethod (commonStrings.LOAD, null);
        method.invoke (This.anyType, null);
   end load;

   procedure unload (This : in out NativeLibraryHelperWrapper) is
   begin
        This.anyType := null;
        This.loader := null;
        Java_Nothing;
        Java_Nothing;
   end unload;

   function toString (This : in out NativeLibraryHelperWrapper) return Unbounded_String is
   begin
        return To_Unbounded_String ("Library: ") & Java_Image (This.getLibraryName);
   end toString;

   function getLibraryName (This : in out NativeLibraryHelperWrapper) return Unbounded_String is
   begin
        return This.libraryName;
   end getLibraryName;

   procedure setLibraryName (This : in out NativeLibraryHelperWrapper; libraryName : Unbounded_String) is
   begin
        This.libraryName := libraryName;
   end setLibraryName;

end org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package;


