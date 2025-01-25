import React from 'react'
import { HiOutlineSearch } from "react-icons/hi";

function SearchBar() {
    const handleSubmit = (e) => {
        e.preventDefault()
        console.log('searching')
    }
  return (
    <div className="flex justify-center p-4 w-full">
    <form onSubmit={handleSubmit} className='flex items-center w-2/5 border-2 rounded-xl p-2  bg-gray-300'>
        <button type='submit' className='text-black'>
            <HiOutlineSearch className='mr-2 size-7'/>
        </button>
        <input className=" bg-gray-300 text-black w-full outline-none" type='text'/>
    </form>
    </div>
  )
}

export default SearchBar 