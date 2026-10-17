--  Generated Code Do Not Modify


package body org.allbinary.logic.visual.media.ImageIOUtil_Package is

   procedure Initialize_Fields (This : in out ImageIOUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageIOUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageIOUtil_Access is
      This : constant ImageIOUtil_Access := new ImageIOUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function read (file : AbFile_Access) return BufferedImage_Access is
   begin
        return ImageIO_Package.read (AbFileNativeUtil_Package.get (file));
   end read;

   --  throws Exception
   function write (renderedImage : RenderedImage_Access; name : Unbounded_String; file : AbFile_Access) return Boolean is
   begin
        return ImageIO_Package.write (renderedImage, name, AbFileNativeUtil_Package.get (file));
   end write;

   procedure read (file : AbFile_Access) is
      Java_Result : constant BufferedImage_Access := read (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end read;

   procedure write (renderedImage : RenderedImage_Access; name : Unbounded_String; file : AbFile_Access) is
      Java_Result : constant Boolean := write (renderedImage, name, file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end write;

end org.allbinary.logic.visual.media.ImageIOUtil_Package;


