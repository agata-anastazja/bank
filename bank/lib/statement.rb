# displays the statement

class Statement

  def initialize(args = {})
    @transactions = args[:transactions]
  end

  def print_out
    @string =  "date       || credit || debit   || balance \n"

    if @transactions != nil
      entries_formating
      @rows.each {|elem| @string += elem }
    end
    @string

  end

  private
    def entries_formating
      @rows = []
      @transactions.each { |entry|
        date_string = entry[0] + " || "
        if entry[1] == nil
          middle_string = "       || " + entry[2].to_s + "     || "
        else
          middle_string = entry[1].to_s + "    ||         || "
        end
        balance_string = entry[3].to_s + " \n"
        string = date_string + middle_string + balance_string

        @rows.push(string)
      }
    end

end
