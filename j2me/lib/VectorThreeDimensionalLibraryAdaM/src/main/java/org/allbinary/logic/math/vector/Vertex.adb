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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.math.vector.Vertex_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out Vertex'Class) is
   begin
      null;
      This.x := BasicDecimal_Package.Create (0);
      This.y := BasicDecimal_Package.Create (0);
      This.z := BasicDecimal_Package.Create (0);
   end Initialize_Fields;


   procedure Initialize (This : in out Vertex'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Vertex_Access is
      This : constant Vertex_Access := new Vertex;
   begin
      Vertex_Package.Initialize (This.all);
      return This;
   end Create;

   function toString (This : in out Vertex) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      positionStrings : PositionStrings_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        positionStrings := PositionStrings_Package.getInstance;
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.append (This.x.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.append (This.y.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.append (This.z.toString);
        return stringBuffer.toString;
   end toString;

end org.allbinary.logic.math.vector.Vertex_Package;


