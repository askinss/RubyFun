a||=[]
# equals to
if a!=nil
  a=a
else
  a=[]
end

class NG
  def elements
    @eles||=[] # lazy instance variable
  end
end

