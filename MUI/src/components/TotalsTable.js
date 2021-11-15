import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';

export const TotalsTable = ({data}) => {

    // The columns of the table and what property in the data they correspond to
    const columns = [
        { name: 'Fips', property: 'fips' },
        { name: 'State', property: 'state' },
        { name: 'County', property: 'county_name' },
        { name: 'Total Cases', property: 'total_cases' },
        { name: 'Total Deaths', property: 'total_deaths' },
        { name: 'Total Hospitalizations', property: 'total_hospital' },
        { name: 'Total Vaccinations', property: 'total_vaccinated' },
        { name: 'Last Updated', property: 'last_updated_timestamp' }
    ];

    return(
        <TableContainer component={Paper}>
            <Table sx={{ minWidth: 650 }} aria-label="simple table">
                <TableHead>
                    <TableRow>
                        {columns.map(column => (
                            <TableCell align="right" key={column.name}>{column.name}</TableCell>
                        ))}
                    </TableRow>
                </TableHead>
                <TableBody>
                    {data.map(county => (
                        <TableRow
                        key={`${county.fips}`}
                        sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                        >
                            {columns.map(column => (
                                <TableCell align="right" key={column.name}>{county[column.property]}</TableCell>
                            ))}

                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    )
}

export default TotalsTable;