### Part III - anagrams

def combine_anagrams(words)

	resultat=[]
	
	while words.length!=0
	anagrames0=words.select {|w| w.downcase.split('').sort.join==words[0].downcase.split('').sort.join}
	resultat.push(anagrames0)
	words=words-anagrames0
	end
	
	return resultat
	
end
