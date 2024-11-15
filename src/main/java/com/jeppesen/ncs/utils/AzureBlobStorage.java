
  package com.jeppesen.ncs.utils;
  
  
  import java.net.URISyntaxException; import java.security.InvalidKeyException;
  import java.util.Map;
  
  import com.microsoft.azure.storage.CloudStorageAccount; import
  com.microsoft.azure.storage.StorageException; import
  com.microsoft.azure.storage.blob.CloudBlobClient; import
  com.microsoft.azure.storage.blob.CloudBlobContainer; import
  com.microsoft.azure.storage.blob.CloudBlockBlob; import
  com.microsoft.azure.storage.blob.ListBlobItem;
  
  
 /**
	 * Class to connect to the Azure storage account
	 * 
	 * @author jason.stock
	 * 
	 */

  
  public class AzureBlobStorage {
  
  private String CONTAINER_NAME;
  
  private String CONNECTION_STRING;
  
 /**
	 * setup configuration to Azure container from properties file previously read
	 * in.
	 * 
	 * This is includes the following:
	 * 
	 * <ul>
	 * <li>azure_container_name : ...</li>
	 * <li>azure_connection_string : ...</li>
	 * </ul>
	 *
	 * @param config map containing the associated <key, value> pairs
	 */

  
  public AzureBlobStorage(Map<String, String> config) { CONTAINER_NAME =
  config.get( "azure_container_name" ); CONNECTION_STRING = config.get(
  "azure_connection_string" ); }
  
 /**
	 * Iterate over all blob items in the container specified, then delete then as
	 * coming across.
	 * 
	 * @return the number of blobs deleted from storage.
	 * @throws StorageException
	 * @throws InvalidKeyException
	 * @throws URISyntaxException
	 */

  
  public int deleteAllBlobs() throws StorageException, InvalidKeyException,
  URISyntaxException { int count = 0;
  
  CloudBlobContainer container = getBlobContainer();
  
  for ( ListBlobItem blobItem : container.listBlobs() ) {
  
  if ( blobItem instanceof CloudBlockBlob ) { CloudBlockBlob blob =
  (CloudBlockBlob) blobItem;
  
  if ( blob.deleteIfExists() ) { count++; } } } return count; }
  
 /**
	 * Remove a single item in blob storage given the name of the blob.
	 * 
	 * @param blobName as a string
	 * @return true if the blob was successfully deleted, false otherwise
	 * @throws InvalidKeyException
	 * @throws StorageException
	 * @throws URISyntaxException
	 */

  
  public Boolean deleteBlob(String blobName) throws InvalidKeyException,
  StorageException, URISyntaxException { CloudBlobContainer container =
  getBlobContainer(); boolean ok; try { CloudBlockBlob blob =
  container.getBlockBlobReference( blobName ); ok = blob.deleteIfExists(); }
  catch ( StorageException | URISyntaxException ex ) { throw ex; } return ok; }
  
 /**
	 * Parses a connection string and returns a cloud storage account created from
	 * the connection string.
	 * 
	 * @return the a container in the Microsoft Azure Blob service
	 * @throws URISyntaxException
	 * @throws StorageException
	 * @throws InvalidKeyException
	 */
		  private CloudBlobContainer getBlobContainer() throws URISyntaxException,
		  StorageException, InvalidKeyException { CloudBlobContainer container; try {
		  
		  CloudStorageAccount acct = CloudStorageAccount.parse( CONNECTION_STRING );
		  CloudBlobClient client = acct.createCloudBlobClient(); container =
		  client.getContainerReference( CONTAINER_NAME ); //
		  container.createIfNotExists(); } catch ( URISyntaxException |
		  StorageException | InvalidKeyException ex ) { throw ex; } return container; }
		  
		  }
		  
		 