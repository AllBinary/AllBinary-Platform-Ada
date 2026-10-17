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


package body org.allbinary.media.image.filter.ImageFileFilter_Package is

   procedure Initialize_Fields (This : in out ImageFileFilter'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageFileFilter'Class) is
   begin
      FileFilter_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageFileFilter_Access is
      This : constant ImageFileFilter_Access := new ImageFileFilter;
   begin
      ImageFileFilter_Package.Initialize (This.all);
      return This;
   end Create;


   function accept_Id (This : in out ImageFileFilter; f_Param : access File_Package.File'Class) return Boolean is
      f : constant File_Access := File_Access (f_Param);
      s : Unbounded_String;
      i : Integer;
      ext : Unbounded_String;
   begin
        if f.isDirectory then
            return True;
        end if;
        s := f.getName;
        i := s.lastIndexOf ('.');
        if ((i) > (0)) and then ((i) < ((Length (s)) - (1))) then
            ext := Translate (Unbounded_Slice (s, ((i) + (1)) + 1, Length (s)), Ada.Strings.Maps.Constants.Lower_Case_Map);
            if ((ext = To_Unbounded_String ("jpg"))) or else ((ext = To_Unbounded_String ("jpeg"))) then
                return True;
            end if;
        end if;
        return False;
   end accept_Id;

   function getDescription (This : in out ImageFileFilter) return Unbounded_String is
   begin
        return To_Unbounded_String ("Accepts .jpg and .jpeg files");
   end getDescription;

   procedure accept_Id (This : in out ImageFileFilter; f_Param : access File_Package.File'Class) is
      Java_Result : constant Boolean := ImageFileFilter'Class (This).accept_Id (f_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end accept_Id;

end org.allbinary.media.image.filter.ImageFileFilter_Package;


