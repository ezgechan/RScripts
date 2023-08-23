#RScript trials &Archive

# Generate random data for bed1 and bed2
set.seed(98)
bed1 <- generateRandomBed(nr = 10)
bed1 <- bed1[sample(nrow(bed1), 10), ]
bed2 <- generateRandomBed(nr = 10)
bed2 <- bed2[sample(nrow(bed2), 10), ]

print(bed1)
print(bed2)

# Initialize Circos plot with ideograms
circos.initializeWithIdeogram()

# Generate genomic links between bed1 and bed2
colors <- adjustcolor("blue", alpha.f = 0.5)  # Adjust alpha (transparency) of the color
circos.genomicLink(bed1, bed2,
                   col = colors,
                   border = NA) 




# this one works but it is random data. if you want to do with your own you can write down your data frame like this: 
-------------------------------------------------------------------------------------------------------------
  library(circlize)
# Your own bed1 data
bed1 <- data.frame(
  chr = c("chr1", "chr2", "chr3"),  # Chromosome names
  start = c(1000000, 300000, 1250060),  # Start positions
  end = c(1500000, 2200000, 3500000)  # End positions
)

# Your own bed2 data
bed2 <- data.frame(
  chr = c("chr1", "chr2", "chr3"),  # Chromosome names
  start = c(1200000, 2200000, 3300000),  # Start positions
  end = c(6600000, 2400000, 3400000),  # End positions
  value1 = c(0.5, -0.2, 0.7)  # Additional data column (if needed)
)

#(rest is red parts) (when you copy and paste the data to chatGBT it can also generates the code below aka data frame)

#OR leading to the directory: 
bed_data <- read.table("your_file_name.bed", header = TRUE, col.names = c("chr", "start", "end"))

install.packages("circlize")

