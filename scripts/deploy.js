

const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory("NFT");
    const nftMarketplaceContractFactory = await hre.ethers.getContractFactory("NFTMarketplace");

    const nftContract = await nftContractFactory.deploy();
    const nftMarketplaceContract = await nftMarketplaceContractFactory.deploy();

    await nftContract.deployed();
    await nftMarketplaceContract.deployed(1);

    console.log("NFT contract is deployed to:", nftContract.address);
    console.log("NFTMarketplace contract is deployed to:", nftMarketplaceContract.address);
}

const runMain = async () => {
    try {
        await main()
        process.exit(0);
    }
    catch (error) {
        console.log(error);
        process.exit(1);
    }
}

runMain();