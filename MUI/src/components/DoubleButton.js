import React from 'react'
import Button from '@mui/material/Button';
import Stack from '@mui/material/Stack';
import {Link} from 'react-router-dom';

function DoubleButton(props) {
    return (
        <div>
            <Stack spacing={1} direction="row">
            <Link to="/Casual" style={{ textDecoration: 'none' }}>
            <Button variant="contained">Casual</Button>
            </Link>
            <Link to="/Informative" style={{ textDecoration: 'none' }}>
            <Button variant="contained">Informative</Button>
            </Link>
            </Stack>
        </div>
    )
}


export default DoubleButton

