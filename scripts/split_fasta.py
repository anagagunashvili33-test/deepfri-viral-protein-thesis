from Bio import SeqIO

input_fasta = "IMGVR5_UViG.faa"
output_prefix = "IMGVR5_UViG_part"
seqs_per_file = 200000   # change this number

records = SeqIO.parse(input_fasta, "fasta")

file_count = 1
seq_count = 0
output_records = []

for record in records:
    output_records.append(record)
    seq_count += 1

    if seq_count == seqs_per_file:
        output_file = f"{output_prefix}_{file_count}.faa"
        SeqIO.write(output_records, output_file, "fasta")
        print(f"Wrote {seq_count} sequences to {output_file}")

        file_count += 1
        seq_count = 0
        output_records = []

if output_records:
    output_file = f"{output_prefix}_{file_count}.faa"
    SeqIO.write(output_records, output_file, "fasta")
    print(f"Wrote {len(output_records)} sequences to {output_file}")