This repository includes solution for the following Ensembl exercise:
Using the latest human data for Ensembl release 98 convert coordinates on chromosome
10 from 25000 to 30000 to the same region in GRCh37.

Response:

{
    "mappings": [
        {
            "original": {
                "seq_region_name": "X",
                "assembly": "GRCh38",
                "coord_system": "chromosome",
                "end": 30000,
                "start": 25000,
                "strand": 1
            },
            "mapped": {
                "assembly": "GRCh37",
                "coord_system": "chromosome",
                "seq_region_name": "X",
                "start": 75000,
                "strand": 1,
                "end": 80000
            }
        }
    ]
}


Alternatives
Describe at least one other way of retrieving the same information:
The other ways to convert coordinates along assambles is to use low level - directly EnsEMBL Perl API, or higher level using another browser converting tools.

Using EnsEmbl Perl API directly would have advantages as follows: 
We have wider options - to set up connections to different databases using registry (REST API uses only latest version on EnsEMBL database), - including local db, optimise performance by excluding cases that we don't need to process, also we could set up any response format. For example, we could add a few improvements for Bio::Ensembl::Mapper module at EnsEmbl Perl API. Disadvantages is time for development, including test, debug and deploy.

Using higher level tools - such as UCSC liftOver or NCBI Remap or CrossMap (a standalone open source program for convenient conversion of genome coordinates (or annotation files) between different assemblies) there are more of them, but generally the advantage is these tools are ready to use, can be used by any biologist or bioinformatic and doesn't require a lot of programming skill, still has a few options for set up.
